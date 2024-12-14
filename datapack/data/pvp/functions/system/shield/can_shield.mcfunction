#スニークしていたらカウントする
execute unless score @s can_shield = @s before_shield run scoreboard players set @s can_shield 0
scoreboard players operation @s before_shield = @s can_shield
execute if score @s can_shield matches 20..30 run scoreboard players add @s can_shield 1
execute if score @s can_shield matches 0..19 if score @s shield_cooltime matches 0 run scoreboard players add @s can_shield 1
execute if score @s can_shield matches 20..30 run scoreboard players set @s shield_cooltime 400
execute if score @s can_shield matches 31.. run scoreboard players set @s can_shield 0
execute if score @s can_shield matches 31.. run scoreboard players set @s before_shield 0

#ポーションリセット
scoreboard players set @s can_potion 0

scoreboard players set @s shield_jump 1

effect give @s resistance 15 1

#3秒間しゃがんだら発動
execute if score @s can_shield matches 20..30 run function pvp:system/shield/shield

#実績ロック
advancement revoke @s only pvp:run_shield