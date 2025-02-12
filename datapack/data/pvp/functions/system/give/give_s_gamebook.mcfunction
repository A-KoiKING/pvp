execute unless predicate pvp:none_offhand run tellraw @s "オフハンドにアイテムを持っています"
execute unless predicate pvp:none_offhand run return 0
item replace entity @p weapon.offhand with written_book
item modify entity @p weapon.offhand pvp:gamebook