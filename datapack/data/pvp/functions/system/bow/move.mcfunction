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

# 弾のUUIDを一時スコアに保存 (弾にはshot.mcfunctionで射手のUUIDがセット済み)
    execute store result score $ammo UUID.0 run scoreboard players get @s UUID.0
    execute store result score $ammo UUID.1 run scoreboard players get @s UUID.1
    execute store result score $ammo UUID.2 run scoreboard players get @s UUID.2
    execute store result score $ammo UUID.3 run scoreboard players get @s UUID.3

# ダメージ処理 (UUID照合)
    execute as @a run function pvp:system/bow/bow_damage

# ダメージ
    # プレイヤー
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] as @a[tag=using_bow_player,limit=1] run scoreboard players add @s BowDamage 20
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 run damage @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 2 pvp:bow_damage by @a[tag=using_bow_player,limit=1]
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @a[tag=using_bow_player,limit=1] run playsound block.amethyst_cluster.hit master @a[tag=using_bow_player,limit=1] ~ ~ ~ 1 2
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill @s
    # プレイヤー(盾を構えているとき)
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] as @a[tag=using_bow_player,limit=1] run scoreboard players add @s BowDamage 5
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 run damage @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 0.5 pvp:bow_damage by @a[tag=using_bow_player,limit=1]
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @a[tag=using_bow_player,limit=1] run playsound block.amethyst_cluster.hit master @a[tag=using_bow_player,limit=1] ~ ~ ~ 1 2
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill @s
    # モブ
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] as @a[tag=using_bow_player,limit=1] run scoreboard players add @s BowDamage 40
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 run damage @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 4 pvp:bow_damage by @a[tag=using_bow_player,limit=1]
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @a[tag=using_bow_player,limit=1] run playsound block.amethyst_cluster.hit master @a[tag=using_bow_player,limit=1] ~ ~ ~ 1 2
    execute if score @s bow.count matches 1.. at @s positioned ~0 ~-0.8 ~0 if entity @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill @s

# 壁の衝突判定
    execute unless block ^ ^ ^0.5 #pvp:no_wall run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.05
    execute unless block ^ ^ ^0.5 #pvp:no_wall run kill @s

# キル
    execute if entity @s[scores={bow.range=0}] run kill @s

# 再帰
    execute if entity @s[scores={recursion=1..}] at @s run function pvp:system/bow/move