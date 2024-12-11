kill @e[type=armor_stand,tag=HP]

execute as @a[scores={hp_time=1..}] run scoreboard players remove @s hp_time 1

execute as @a[gamemode=survival] run scoreboard players operation @s hp_before -= @s hp
execute as @a[gamemode=survival,scores={hp_before=..-1,hp_before=1..}] run scoreboard players set @s hp_time 100

execute as @a[gamemode=survival] run scoreboard players operation @s hp_before = @s hp

#HPの計算
execute as @a[gamemode=survival] run scoreboard players operation @s hp_value = @s hp
execute as @a[gamemode=survival] run scoreboard players operation @s hp_value *= #40 Constant
execute as @a[gamemode=survival] run scoreboard players operation @s hp_value /= @s hp_max

execute as @a[scores={hp_time=1..}] at @s[scores={hp_time=1..}] run function pvp:system/hp_bar/player/display