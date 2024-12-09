scoreboard players set @s potion_cooltime 1

execute as @a[scores={potion_cooltime=1}, nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}}] run function pvp:system/heal_potion/slot/mainhand
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:-106b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/offhand
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:0b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot0
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:1b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot1
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:2b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot2
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:3b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot3
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:4b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot4
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:5b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot5
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:6b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot6
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:7b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot7
execute as @a[scores={potion_cooltime=1}, nbt={Inventory:[{Slot:8b, id:"minecraft:carrot_on_a_stick", tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/slot8

execute as @a[scores={potion_cooltime=1}] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/slot/other