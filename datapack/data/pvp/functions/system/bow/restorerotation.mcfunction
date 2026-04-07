# 矢の情報を取得
execute store result score @s arrow_yaw run data get entity @s Rotation[0]
execute store result score @s arrow_pitch run data get entity @s Rotation[1]

# 向きを復元
execute store result storage temp:arrow_data arrow_yaw float 1 run scoreboard players get @s arrow_yaw
execute store result storage temp:arrow_data arrow_pitch float 1 run scoreboard players get @s arrow_pitch

# 値を保存
data modify entity @e[type=armor_stand,tag=just_spawned,sort=nearest,limit=1,distance=..3] Rotation[0] set from storage temp:arrow_data arrow_yaw
data modify entity @e[type=armor_stand,tag=just_spawned,sort=nearest,limit=1,distance=..3] Rotation[1] set from storage temp:arrow_data arrow_pitch

# 矢に情報を保存
execute if score @s bow_charge matches 3 as @e[type=armor_stand,tag=just_spawned,sort=nearest,limit=1,distance=..3] at @s run function pvp:system/bow/chargesetting3
execute if score @s bow_charge matches 2 as @e[type=armor_stand,tag=just_spawned,sort=nearest,limit=1,distance=..3] at @s run function pvp:system/bow/chargesetting2
execute if score @s bow_charge matches 1 as @e[type=armor_stand,tag=just_spawned,sort=nearest,limit=1,distance=..3] at @s run function pvp:system/bow/chargesetting1
