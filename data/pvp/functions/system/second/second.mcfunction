#MP回復処理
execute as @a[scores={MPcount=..1999}] run scoreboard players add @s MPcount 1
execute as @a run scoreboard players operation @s MP = @s MPcount
execute as @a run scoreboard players operation @s MP /= #20 20

#制限時間バーの毎秒減少
function pvp:system/time_bar

#shield_cooltime
execute as @a[scores={shield_cooltime=1..}] run scoreboard players remove @s shield_cooltime 1
execute as @a[scores={shield_cooltime=1}] at @a[scores={shield_cooltime=1}] run playsound minecraft:block.note_block.bell master @a ~ ~ ~

#potionのクールタイムをカウントする
execute as @a[scores={potion_cooltime=1..}] run scoreboard players remove @s potion_cooltime 1
execute as @a[scores={potion_cooltime=1}] at @a[scores={potion_cooltime=1}] run playsound minecraft:block.note_block.bell master @a ~ ~ ~