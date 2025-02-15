time set day
weather clear

effect give @a minecraft:saturation infinite 0 true
effect give @a minecraft:health_boost infinite 14 true
effect give @a minecraft:instant_health 1 20 true
effect give @a night_vision infinite 0 true

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

worldborder set 10000

scoreboard players set @a potion_cooltime 0

scoreboard players set @a MPMax 100
scoreboard players set @a points 0
scoreboard players set @a diff 0
scoreboard players set @a level 0
scoreboard players set @a MP 100
scoreboard players set @a MPcount 2000

scoreboard players set @a hp_max 80
scoreboard players set @a hp_value 0
scoreboard players set @a hp_time 0
scoreboard players set @a hp_before 80

scoreboard players set @a can_shield 0
scoreboard players set @a shield_jump 0
scoreboard players set @a before_shield 0
scoreboard players set @a shield_cooltime 0

gamerule keepInventory true

tellraw @a ["",{"text":"[GameBook]","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function pvp:system/give/tool/gamebook"},"hoverEvent":{"action":"show_text","contents":"\u5fc5\u305a\u30aa\u30d5\u30cf\u30f3\u30c9\u306b\u30a2\u30a4\u30c6\u30e0\u3092\u6301\u3063\u3066\u306a\u3044\u72b6\u614b\u3067\u884c\u3063\u3066\u304f\u3060\u3055\u3044\u3002"}},{"text":"\u3092\u518d\u5165\u624b"}]