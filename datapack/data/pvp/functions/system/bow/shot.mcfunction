# ここで弓を引いているときに加算 a
execute if score @s bow_using matches 0 run scoreboard players add @s bow_using_time 1

# 流石に10分引いてたらヤバそうだからリセット a
execute if score @s bow_using matches 12000 run scoreboard players set @s bow_using 1

# 全体で弓を引いていないことを検知するために常時加算 a
scoreboard players add @s bow_using 1

# 弓を撃ったことを検知 a
execute as @a at @s if score @s bow matches 1.. if score @s bow_using_time matches 40.. run function pvp:system/bow/charge3
execute as @a at @s if score @s bow matches 1.. if score @s bow_using_time matches 16..39 run function pvp:system/bow/charge2
execute as @a at @s if score @s bow matches 1.. if score @s bow_using_time matches 0..15 run function pvp:system/bow/charge1
execute as @a at @s if score @s bow matches 1.. run scoreboard players set @s bow_using_time 0

# 矢を削除
execute as @a at @s run kill @e[type=arrow,sort=nearest,limit=1]

# 10回弾を生成
execute as @s at @s if score @s burstcount matches 10 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 9 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 8 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 7 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 6 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 5 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 4 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 3 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 2 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}
execute as @s at @s if score @s burstcount matches 1 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ammo"]}

execute as @e[type=armor_stand,tag=ammo] if score @s bow.count matches 1.. run tag @s add using_bow.count

# 向きを復元
execute as @a[scores={burstcount=1..}] store result storage temp:arrow_data arrow_yaw float 1 run scoreboard players get @s arrow_yaw
execute as @a[scores={burstcount=1..}] store result storage temp:arrow_data arrow_pitch float 1 run scoreboard players get @s arrow_pitch

execute as @a[scores={burstcount=1..}] at @s run data modify entity @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count] Rotation[0] set from storage temp:arrow_data arrow_yaw
execute as @a[scores={burstcount=1..}] at @s run data modify entity @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count] Rotation[1] set from storage temp:arrow_data arrow_pitch

execute as @a[scores={burstcount=1..}] at @s if score @s bow_charge matches 3 as @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count] at @s run function pvp:system/bow/chargesetting3
execute as @a[scores={burstcount=1..}] at @s if score @s bow_charge matches 2 as @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count] at @s run function pvp:system/bow/chargesetting2
execute as @a[scores={burstcount=1..}] at @s if score @s bow_charge matches 1 as @e[type=armor_stand,tag=ammo,sort=nearest,limit=1,tag=!using_bow.count] at @s run function pvp:system/bow/chargesetting1

# バースト数を減らす
scoreboard players remove @s[scores={burstcount=1..}] burstcount 1

execute as @a[scores={bow=1..}] run scoreboard players set @a bow 0