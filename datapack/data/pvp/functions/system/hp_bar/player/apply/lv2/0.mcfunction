#更に分岐
execute if score @s hp_value matches ..4 run function pvp:system/hp_bar/player/apply/lv1/0
execute if score @s hp_value matches 5..8 run function pvp:system/hp_bar/player/apply/lv1/1