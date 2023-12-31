clear @p iron_shovel{HideFlags:7}
item replace entity @p weapon.offhand with iron_shovel
item modify entity @p weapon.offhand pvp:shovel
execute as @p at @p run playsound block.note_block.chime master @a ~ ~ ~