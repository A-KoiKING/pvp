#title設定
execute as @s[scores={can_title=1}] run title @s times 15 50 15
execute as @s[scores={can_title=81}] run title @s times 5 15 5
execute as @s[scores={can_title=141}] run title @s times 15 50 15

#すぐにtitle "PVP"
execute as @s[scores={can_title=1}] run title @s title ["",{"text":"a ","bold":true,"italic":true,"obfuscated":true,"color":"gold"},{"text":"PVP ","bold":true,"italic":true,"color":"gold"},{"text":"a","bold":true,"italic":true,"obfuscated":true,"color":"gold"}]
execute as @s[scores={can_title=1}] at @s run playsound minecraft:block.enchantment_table.use master @s ^ ^1.65 ^0.0001 1.5

#4秒後にtitle "3"
execute as @s[scores={can_title=81}] run title @s title {"text":"3","bold":true,"italic":true,"color":"gold"}
execute as @s[scores={can_title=81}] at @s run playsound minecraft:block.note_block.harp master @s ^ ^1.65 ^0.0001

#5秒後にtitle "2"
execute as @s[scores={can_title=101}] run title @s title {"text":"2","bold":true,"italic":true,"color":"gold"}
execute as @s[scores={can_title=101}] at @s run playsound minecraft:block.note_block.harp master @s ^ ^1.65 ^0.0001

#6秒後にtitle "1"
execute as @s[scores={can_title=121}] run title @s title {"text":"1","bold":true,"italic":true,"color":"gold"}
execute as @s[scores={can_title=121}] at @s run playsound minecraft:block.note_block.harp master @s ^ ^1.65 ^0.0001

#7秒後にtitle "Start!"
execute as @s[scores={can_title=141}] run title @s title {"text":"Start!","bold":true,"italic":true,"color":"gold"}
execute as @s[scores={can_title=141}] at @s run playsound minecraft:entity.player.levelup master @s ^ ^1.65 ^0.0001

#titleをカウント
scoreboard players add @s can_title 1

#8秒後にリセット
execute as @s[scores={can_title=150..}] run scoreboard players set @s can_title 0