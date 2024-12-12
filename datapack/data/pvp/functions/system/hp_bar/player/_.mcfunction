#死亡時の処理
execute as @s[scores={hp=0}] run return 0

#HPの計算
scoreboard players operation @s hp_value = @s hp
scoreboard players operation @s hp_value *= #40 Constant
scoreboard players operation @s hp_value /= @s hp_max

#HPの変更の検知
scoreboard players operation @s hp_before -= @s hp
execute as @s[scores={hp_before=..-1,hp_before=1..}] run scoreboard players set @s hp_time 100

execute as @s[scores={hp_time=1..}] run scoreboard players remove @s hp_time 1
execute as @s[scores={hp_time=1..}] at @s[scores={hp_time=1..}] run function pvp:system/hp_bar/player/display

scoreboard players operation @s hp_before = @s hp