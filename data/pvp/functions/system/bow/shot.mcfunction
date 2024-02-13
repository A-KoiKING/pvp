# 弓を撃ったことを検知
    execute if score @s bow matches 1.. run scoreboard players set @s burstcount 10

# 矢を削除
    kill @e[type=arrow,sort=nearest,limit=1]

execute if score @s burstcount matches 10 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 9 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 8 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 7 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 6 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 5 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 4 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 3 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 2 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}
execute if score @s burstcount matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["ChuzItems.Projectile.ChargedShootingArrow","ChuzItems.Projectile.ChargedShootingArrow0","ammo","Chuz.Init"]}

execute as @e[type=armor_stand,tag=ChuzItems.Projectile.ChargedShootingArrow,tag=Chuz.Init,sort=nearest,limit=1] at @s run function pvp:system/bow/chargeshot

# バースト数をへらす
    scoreboard players remove @s burstcount 1