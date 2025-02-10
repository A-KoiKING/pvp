#mainhandにhealpotionを持ってスニークしていたらカウントする
scoreboard players add @s can_potion 1

scoreboard players set @s can_jump 0

#しゃがんでから0.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=10}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから0.75秒後に効果音を鳴らす
execute as @a[scores={can_potion=15}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=20}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=25}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=30}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.75秒後に効果音を鳴らす
execute as @a[scores={can_potion=35}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=40}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=45}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=50}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.75秒後に効果音を鳴らす
execute as @a[scores={can_potion=55}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=60}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=65}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=70}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=75}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから4.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=80}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから4.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=85}] at @s run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#4.5秒間mainhandにhealpotionを持ってスニークしていたら効果音を鳴らす
execute as @a[scores={can_potion=90}] at @s run playsound minecraft:entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001

#4.5秒間mainhandにhealpotionを持ってスニークしていたら回復する
execute as @s[scores={can_potion=90}] run function pvp:system/heal_potion/heal