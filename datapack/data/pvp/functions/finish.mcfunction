scoreboard players set @a heal_ticket 1

gamemode creative @a

effect clear @a
effect give @a night_vision infinite 0 true

worldborder set 400

title @a times 20 80 20
title @a title {"text":"Finish!","bold":true,"italic":true,"color":"gold"}

# ヘッダー表示
tellraw @a [{"text":"=== 試合結果 ===","color":"gold","bold":true}]

# 全プレイヤー分をループして表示
execute as @a run tellraw @a [{"text":"  "},{"selector":"@s","color":"yellow"},{"text":" | Kill: ","color":"white"},{"score":{"name":"@s","objective":"KillCount"},"color":"red"},{"text":"  Damage: ","color":"white"},{"score":{"name":"@s","objective":"AllDamage"},"color":"aqua"}]

# フッター
tellraw @a [{"text":"================","color":"gold"}]

gamerule keepInventory true

bossbar set time visible false
scoreboard players set $second playtime 0

scoreboard players set $play play_pvp 0

kill @e[distance=0..,tag=HP,type=armor_stand]