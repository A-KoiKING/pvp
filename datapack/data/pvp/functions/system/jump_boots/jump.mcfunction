#強さ調整
execute if score @s can_jump matches 20..39 run scoreboard players set $strength delta.api.launch 7000

execute if score @s can_jump matches 40..49 run scoreboard players set $strength delta.api.launch 9000

execute if score @s can_jump matches 50..59 run scoreboard players set $strength delta.api.launch 11000

execute if score @s can_jump matches 60..64 run scoreboard players set $strength delta.api.launch 13000

execute if score @s can_jump matches 70.. run scoreboard players set $strength delta.api.launch 15000

#跳ぶ
function delta:api/launch_looking
playsound minecraft:entity.ender_dragon.flap master @a ^ ^1.65 ^0.0001 0.4

#リセットする
execute if score @s can_jump matches 1.. run scoreboard players set $strength delta.api.launch 5000
scoreboard players set @s can_jump 0
scoreboard players set @s jump 0