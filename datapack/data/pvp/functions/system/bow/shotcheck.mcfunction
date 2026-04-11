execute if score @s bow_using_time matches 30.. run function pvp:system/bow/charge3
execute if score @s bow_using_time matches 10..29 run function pvp:system/bow/charge2
execute if score @s bow_using_time matches 0..9 run function pvp:system/bow/charge1
scoreboard players set @s bow_using_time 0