#スニークしていたらカウントする
execute unless score @s can_shield = @s before_shield run scoreboard players set @s can_shield 0
scoreboard players operation @s before_shield = @s can_shield
execute if score @s shield_cooltime matches 0 run scoreboard players add @s can_shield 1

#ポーションリセット
scoreboard players set @s can_potion 0

scoreboard players set @s shield_jump 1

#3秒間しゃがんだら発動
execute if score @s can_shield matches 60 run function pvp:system/shield/shield
execute if score @s can_shield matches 61..120 run function pvp:system/sphere/sphere
execute if score @s can_shield matches 121.. run scoreboard players set @s shield_cooltime 7


#実績ロック
advancement revoke @s only pvp:run_shield