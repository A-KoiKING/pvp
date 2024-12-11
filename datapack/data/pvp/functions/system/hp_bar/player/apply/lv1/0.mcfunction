#更に分岐
execute if score @s hp_value matches ..2 run function pvp:system/hp_bar/player/apply/lv0/0
execute if score @s hp_value matches 3..4 run function pvp:system/hp_bar/player/apply/lv0/1