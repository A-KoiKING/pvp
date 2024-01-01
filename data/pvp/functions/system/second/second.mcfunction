scoreboard players set $second second 1

#MP回復処理
execute as @a[scores={MP=..99}] run scoreboard players add @s MP 1

#shield_cooltime
execute as @a[scores={shield_cooltime=1..}] run scoreboard players remove @s shield_cooltime 1
execute as @a[scores={shield_cooltime=1}] at @a[scores={shield_cooltime=1}] run playsound minecraft:block.note_block.bell master @a ~ ~ ~

#potionのクールタイムをカウントする
execute as @a[scores={potion_cooltime=1..}] run scoreboard players remove @s potion_cooltime 1
execute as @a[scores={potion_cooltime=1}] at @a[scores={potion_cooltime=1}] run playsound minecraft:block.note_block.bell master @a ~ ~ ~