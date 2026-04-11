    # プレイヤー
    execute if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] as @a[tag=using_bow_player,limit=1] run scoreboard players add @s BowDamage 20
    damage @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 2 pvp:bow_damage by @a[tag=using_bow_player,limit=1]
    execute if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @a[tag=using_bow_player,limit=1] run playsound block.amethyst_cluster.hit master @a[tag=using_bow_player,limit=1] ~ ~ ~ 1 2
    execute if entity @e[tag=!shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill @s
    # プレイヤー(盾を構えているとき)
    execute if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] as @a[tag=using_bow_player,limit=1] run scoreboard players add @s BowDamage 5
    damage @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 0.5 pvp:bow_damage by @a[tag=using_bow_player,limit=1]
    execute if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @a[tag=using_bow_player,limit=1] run playsound block.amethyst_cluster.hit master @a[tag=using_bow_player,limit=1] ~ ~ ~ 1 2
    execute if entity @e[tag=shielding,gamemode=!spectator,type=!minecraft:armor_stand,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill @s
    # モブ
    execute if entity @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] as @a[tag=using_bow_player,limit=1] run scoreboard players add @s BowDamage 40
    damage @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] 4 pvp:bow_damage by @a[tag=using_bow_player,limit=1]
    execute if entity @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] at @a[tag=using_bow_player,limit=1] run playsound block.amethyst_cluster.hit master @a[tag=using_bow_player,limit=1] ~ ~ ~ 1 2
    execute if entity @e[type=#pvp:mobs,distance=..1,limit=1,sort=nearest,tag=!using_bow_player] run kill @s