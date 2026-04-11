execute unless predicate pvp:none_offhand run function pvp:system/give/fail
clear @p arrow{HideFlags:7}
item replace entity @p weapon.offhand with arrow
item modify entity @p weapon.offhand pvp:arrow
execute as @p at @p run playsound block.note_block.chime master @a ^ ^1.65 ^0.0001