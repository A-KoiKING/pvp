#矢の装填数を設定
scoreboard players set @s burstcount 3

# 矢の情報を取得
data modify storage temp:arrow_data arrow_yaw set from entity @e[type=arrow,sort=nearest,limit=1] Rotation[0]
data modify storage temp:arrow_data arrow_pitch set from entity @e[type=arrow,sort=nearest,limit=1] Rotation[1]

# 変更後の値を反転して NBT に戻す
execute store result storage temp:arrow_data arrow_yaw float -1 run data get storage temp:arrow_data arrow_yaw
execute store result storage temp:arrow_data arrow_pitch float -1 run data get storage temp:arrow_data arrow_pitch