#更に分岐
execute if score @s hp_value matches ..8 run function pvp:system/hp_bar/player/apply/lv2/0
execute if score @s hp_value matches 9..16 run function pvp:system/hp_bar/player/apply/lv2/1