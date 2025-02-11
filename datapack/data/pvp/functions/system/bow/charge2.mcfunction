#矢の装填数を設定
scoreboard players set @s burstcount 3
scoreboard players set @s bow_charge 2

# 矢の情報を取得
execute store result score @s arrow_yaw run data get entity @e[type=arrow,sort=nearest,limit=1] Rotation[0]
execute store result score @s arrow_pitch run data get entity @e[type=arrow,sort=nearest,limit=1] Rotation[1]

# 値を反転する
scoreboard players operation @s arrow_yaw *= #-1 -1
scoreboard players operation @s arrow_pitch *= #-1 -1