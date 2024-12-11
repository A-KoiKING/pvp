#MP回復処理
execute as @a[scores={MPcount=..1999}] run scoreboard players add @s MPcount 1
execute as @a run scoreboard players operation @s MP = @s MPcount
execute as @a run scoreboard players operation @s MP /= #20 20

#制限時間バーの毎秒減少
function pvp:system/time_bar

#shield_cooltime
execute as @a[scores={shield_cooltime=1..}] run scoreboard players remove @s shield_cooltime 1
execute as @a[scores={shield_cooltime=1}] at @a[scores={shield_cooltime=1}] run playsound minecraft:block.note_block.bell master @a ^ ^1.65 ^0.0001

#potionのクールタイムをカウントする
execute as @a[scores={potion_cooltime=1..}] run scoreboard players remove @s potion_cooltime 1
execute as @a[scores={potion_cooltime=1}] at @a[scores={potion_cooltime=1}] run playsound minecraft:block.note_block.bell master @a ^ ^1.65 ^0.0001
execute as @a[scores={potion_cooltime=1}] at @a[scores={potion_cooltime=1}] run function pvp:system/heal_potion/heal_reset

execute as @a[scores={potion_cooltime=0}] if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/heal_reset