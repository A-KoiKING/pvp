#ここで弓を引いているときに加算
execute if score @s bow_using matches 0 run scoreboard players add @s bow_using_time 1

#流石に10分引いてたらヤバそうだからリセット
execute if score @s bow_using matches 12000 run scoreboard players set @s bow_using 1

#全体で弓を引いていないときに加算
scoreboard players add @s bow_using 1

# 弓を撃ったことを検知
execute if score @s bow matches 1.. if score @s bow_using_time matches 40.. run function pvp:system/bow/charge3
execute if score @s bow matches 1.. if score @s bow_using_time matches 16..39 run function pvp:system/bow/charge2
execute if score @s bow matches 1.. if score @s bow_using_time matches 0..15 run function pvp:system/bow/charge1
execute if score @s bow matches 1.. run scoreboard players set @s bow_using_time 0

# 矢を削除
kill @e[type=arrow,sort=nearest,limit=1]

# 10回弾を生成
execute if score @s burstcount matches 10 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 9 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 8 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 7 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 6 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 5 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 4 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 3 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 2 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 1 run summon armor_stand ~ ~1.5 ~ {Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}

# 向きを復元
data modify entity @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,sort=nearest,limit=1] Rotation[0] set from storage temp:arrow_data arrow_yaw
data modify entity @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,sort=nearest,limit=1] Rotation[1] set from storage temp:arrow_data arrow_pitch

execute if score @s bow_charge matches 3 as @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,tag=Chuz.Init,sort=nearest,limit=1] at @s run function pvp:system/bow/chargesetting3
execute if score @s bow_charge matches 2 as @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,tag=Chuz.Init,sort=nearest,limit=1] at @s run function pvp:system/bow/chargesetting2
execute if score @s bow_charge matches 1 as @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,tag=Chuz.Init,sort=nearest,limit=1] at @s run function pvp:system/bow/chargesetting1

# バースト数を減らす
scoreboard players remove @s burstcount 1

scoreboard players set @a bow 0