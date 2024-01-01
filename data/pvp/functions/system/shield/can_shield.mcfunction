#スニークしていたらカウントする
scoreboard players add @s can_shield 1

scoreboard players set @s can_potion 0
scoreboard players set @s can_jump 0

execute if score @s can_shield matches 60.. run function pvp:system/shield/shield

advancement revoke @s only pvp:run_shield