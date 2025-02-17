# 向きを復元
execute store result storage temp:arrow_data arrow_yaw float 1 run scoreboard players get @s arrow_yaw
execute store result storage temp:arrow_data arrow_pitch float 1 run scoreboard players get @s arrow_pitch

data modify entity @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count,distance=..3] Rotation[0] set from storage temp:arrow_data arrow_yaw
data modify entity @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count,distance=..3] Rotation[1] set from storage temp:arrow_data arrow_pitch

execute if score @s bow_charge matches 3 as @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count,distance=..3] at @s run function pvp:system/bow/chargesetting3
execute if score @s bow_charge matches 2 as @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count,distance=..3] at @s run function pvp:system/bow/chargesetting2
execute if score @s bow_charge matches 1 as @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count,distance=..3] at @s run function pvp:system/bow/chargesetting1
