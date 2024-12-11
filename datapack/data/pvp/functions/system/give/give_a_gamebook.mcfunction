execute unless predicate pvp:none_offhand run tellraw @s "オフハンドにアイテムを持っています"
execute unless predicate pvp:none_offhand run return 0
item replace entity @a weapon.mainhand with written_book
item modify entity @a weapon.mainhand pvp:gamebook