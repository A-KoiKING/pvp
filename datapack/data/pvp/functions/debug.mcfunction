time set day
weather clear

effect clear @a
effect give @a saturation infinite 0 true
effect give @a health_boost infinite 14 true
effect give @a instant_health 1 20 true
effect give @a resistance 8 5 true
effect give @a glowing infinite 0 true
effect give @a night_vision infinite 0 true
effect give @a slow_falling 3 1 true

clear @a

item replace entity @a weapon.offhand with shield
item replace entity @a hotbar.0 with iron_sword
item replace entity @a hotbar.1 with bow
item replace entity @a hotbar.2 with air
item replace entity @a hotbar.3 with iron_pickaxe
item replace entity @a hotbar.4 with iron_axe
item replace entity @a hotbar.5 with iron_shovel
item replace entity @a hotbar.6 with shears
item replace entity @a hotbar.7 with minecraft:carrot_on_a_stick
item replace entity @a hotbar.8 with written_book
item replace entity @a armor.head with chainmail_helmet
item replace entity @a armor.chest with chainmail_chestplate
item replace entity @a armor.legs with chainmail_leggings
item replace entity @a armor.feet with leather_boots
item replace entity @a inventory.26 with arrow 1

item modify entity @a weapon.offhand pvp:shield
item modify entity @a hotbar.0 pvp:sword
item modify entity @a hotbar.1 pvp:bow
item modify entity @a hotbar.3 pvp:pickel
item modify entity @a hotbar.4 pvp:axe
item modify entity @a hotbar.5 pvp:shovel
item modify entity @a hotbar.6 pvp:shears
item modify entity @a hotbar.7 pvp:potion
item modify entity @a hotbar.8 pvp:gamebook
item modify entity @a armor.head pvp:helmet
item modify entity @a armor.chest pvp:chest
item modify entity @a armor.legs pvp:legs
item modify entity @a armor.feet pvp:feet
item modify entity @a inventory.26 pvp:arrow