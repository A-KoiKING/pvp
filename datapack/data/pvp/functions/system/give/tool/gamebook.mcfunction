execute unless predicate pvp:none_offhand run function pvp:system/give/fail
clear @p written_book{CustomModelData:1}
item replace entity @p weapon.offhand with written_book
item modify entity @p weapon.offhand pvp:gamebook
execute as @p at @p run playsound block.note_block.chime master @a ^ ^1.65 ^0.0001