execute as @a at @a run playsound block.note_block.harp master @a ~ ~ ~ 1 2

scoreboard players set @s can_jump 0

scoreboard players add @s before_shield 1

execute unless score @s can_shield = @s before_shield run scoreboard players set @s shield_jump 0

scoreboard players operation @s before_shield = @s can_shield