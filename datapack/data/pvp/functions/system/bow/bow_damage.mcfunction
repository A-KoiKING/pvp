# 一時保存計算スコアボードにプレイヤーのUUIDを保存
execute store result score $system UUID.0 run scoreboard players get @s UUID.0
execute store result score $system UUID.1 run scoreboard players get @s UUID.1
execute store result score $system UUID.2 run scoreboard players get @s UUID.2
execute store result score $system UUID.3 run scoreboard players get @s UUID.3

# 矢に保存されているUUID($ammo)とプレイヤーのUUIDと一致しているか確認
scoreboard players operation @s UUID.0 -= $ammo UUID.0
scoreboard players operation @s UUID.1 -= $ammo UUID.1
scoreboard players operation @s UUID.2 -= $ammo UUID.2
scoreboard players operation @s UUID.3 -= $ammo UUID.3

# 一致したらタグを追加
execute if score @s UUID.0 matches 0 if score @s UUID.1 matches 0 if score @s UUID.2 matches 0 if score @s UUID.3 matches 0 run tag @s add using_bow_player

# 一時保存計算スコアボードからプレイヤーのUUIDをリセット
execute store result score @s UUID.0 run scoreboard players get $system UUID.0
execute store result score @s UUID.1 run scoreboard players get $system UUID.1
execute store result score @s UUID.2 run scoreboard players get $system UUID.2
execute store result score @s UUID.3 run scoreboard players get $system UUID.3