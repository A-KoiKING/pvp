execute unless predicate pvp:none_offhand run tellraw @s "オフハンドにアイテムを持っています"
execute unless predicate pvp:none_offhand run return 0
clear @p carrot_on_a_stick{CustomModelData:1}
item replace entity @p weapon.offhand with carrot_on_a_stick
item modify entity @p weapon.offhand pvp:potion
execute as @p at @p run playsound block.note_block.chime master @a ^ ^1.65 ^0.0001