gamemode creative @a

effect clear @a
effect give @a night_vision infinite 0 true

worldborder set 400

title @a times 20 80 20
title @a title {"text":"Finish!","bold":true,"italic":true,"color":"gold"}

gamerule keepInventory true

bossbar set time visible false
scoreboard players set $second playtime 0

scoreboard players set $play play_pvp 0

kill @e[type=armor_stand,tag=HP]