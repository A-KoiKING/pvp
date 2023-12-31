clear @p shield{HideFlags:7}
item replace entity @p weapon.offhand with shield
item modify entity @p weapon.offhand pvp:shield
execute as @p at @p run playsound block.note_block.chime master @a ~ ~ ~