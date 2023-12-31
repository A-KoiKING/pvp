clear @p shears{HideFlags:7}
item replace entity @p weapon.offhand with shears
item modify entity @p weapon.offhand pvp:shears
execute as @p at @p run playsound block.note_block.chime master @a ~ ~ ~