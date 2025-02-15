# タグを削除
    tag @a remove using_bow_player

# パーティクル
    execute if entity @s[scores={bow.count=1..}] run particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.1 1 force @a[distance=..120]
    
# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={recursion=1..}] run scoreboard players operation @s recursion = @s bow.spead

# 前進
    execute if entity @s[scores={recursion=1..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #pvp:no_wall run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s recursion 1
    scoreboard players remove @s bow.range 1

# 矢にプレイヤーのUUIDをセット
    execute as @s[tag=!using_bow.count] run function pvp:system/bow/attack_player

# ダメージ処理
    execute as @a at @s run function pvp:system/bow/bow_damage

# ダメージ
    # プレイヤー
    execute as @e[type=minecraft:armor_stand,tag=ammo] at @s positioned ~0 ~-0.8 ~0 run damage @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 4 pvp:bow_damage by @p[tag=using_bow_player]
    execute as @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..}] at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @p[tag=using_bow_player] run playsound block.amethyst_cluster.hit master @p[tag=using_bow_player] ~ ~ ~ 1 2
    execute as @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..}] at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill
    # プレイヤー(盾を構えているとき)
    execute as @e[type=minecraft:armor_stand,tag=ammo] at @s positioned ~0 ~-0.8 ~0 run damage @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 1 pvp:bow_damage by @p[tag=using_bow_player]
    execute as @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..}] at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @p[tag=using_bow_player] run playsound block.amethyst_cluster.hit master @p[tag=using_bow_player] ~ ~ ~ 1 2
    execute as @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..}] at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill
    # モブ
    execute as @e[type=minecraft:armor_stand,tag=ammo] at @s positioned ~0 ~-0.8 ~0 run damage @e[type=!minecraft:armor_stand,type=!minecraft:player,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 4 pvp:bow_damage by @p[tag=using_bow_player]
    execute as @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..}] at @s positioned ~0 ~-0.8 ~0 if entity @e[type=!minecraft:armor_stand,type=!minecraft:player,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @p[tag=using_bow_player] run playsound block.amethyst_cluster.hit master @p[tag=using_bow_player] ~ ~ ~ 1 2
    execute as @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..}] at @s positioned ~0 ~-0.8 ~0 if entity @e[type=!minecraft:armor_stand,type=!minecraft:player,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill

# 壁の衝突判定
    execute unless block ^ ^ ^0.5 #pvp:no_wall run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.05
    execute unless block ^ ^ ^0.5 #pvp:no_wall run kill @s

# キル
    execute if entity @s[scores={bow.range=0}] run kill @s

# 再帰
    execute if entity @s[scores={recursion=1..}] at @s run function pvp:system/bow/move