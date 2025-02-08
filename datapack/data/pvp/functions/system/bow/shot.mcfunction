# 弓を撃ったことを検知
execute if score @s bow matches 1.. run scoreboard players set @s burstcount 10

# 矢の情報を取得
data modify storage temp:arrow_data arrow_yaw set from entity @e[type=arrow,sort=nearest,limit=1] Rotation[0]
data modify storage temp:arrow_data arrow_pitch set from entity @e[type=arrow,sort=nearest,limit=1] Rotation[1]

# 変更後の値を反転して NBT に戻す
execute if score @s burstcount matches 10 store result storage temp:arrow_data arrow_yaw float -1 run data get storage temp:arrow_data arrow_yaw
execute if score @s burstcount matches 10 store result storage temp:arrow_data arrow_pitch float -1 run data get storage temp:arrow_data arrow_pitch

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

execute as @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,tag=Chuz.Init,sort=nearest,limit=1] at @s run function pvp:system/bow/chargeshot

# バースト数を減らす
scoreboard players remove @s burstcount 1
