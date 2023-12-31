clear @p iron_axe{HideFlags:7}
item replace entity @p weapon.offhand with iron_axe
item modify entity @p weapon.offhand pvp:axe
execute as @p at @p run playsound block.note_block.chime master @a ~ ~ ~