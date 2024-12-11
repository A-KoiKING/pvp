execute unless predicate pvp:none_boots run tellraw @s "既にブーツを履いています"
execute unless predicate pvp:none_boots run return 0
item replace entity @a armor.feet with leather_boots
item modify entity @a armor.feet pvp:feet