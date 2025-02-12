execute unless predicate pvp:none_offhand run tellraw @s "オフハンドにアイテムを持っています"
execute unless predicate pvp:none_offhand run return 0
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick
item modify entity @s weapon.offhand pvp:potion