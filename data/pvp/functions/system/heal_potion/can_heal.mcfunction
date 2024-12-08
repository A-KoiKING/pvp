#mainhandにhealpotionを持ってスニークしていたらカウントする
scoreboard players add @s can_potion 1

scoreboard players set @s can_jump 0

#しゃがんでから0.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=10}] at @a[scores={can_potion=10}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから0.75秒後に効果音を鳴らす
execute as @a[scores={can_potion=15}] at @a[scores={can_potion=15}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=20}] at @a[scores={can_potion=20}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=25}] at @a[scores={can_potion=25}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=30}] at @a[scores={can_potion=30}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから1.75秒後に効果音を鳴らす
execute as @a[scores={can_potion=35}] at @a[scores={can_potion=35}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=40}] at @a[scores={can_potion=40}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=45}] at @a[scores={can_potion=45}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=50}] at @a[scores={can_potion=50}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから2.75秒後に効果音を鳴らす
execute as @a[scores={can_potion=55}] at @a[scores={can_potion=55}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=60}] at @a[scores={can_potion=60}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=65}] at @a[scores={can_potion=65}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=70}] at @a[scores={can_potion=70}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから3.5秒後に効果音を鳴らす
execute as @a[scores={can_potion=75}] at @a[scores={can_potion=75}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから4.0秒後に効果音を鳴らす
execute as @a[scores={can_potion=80}] at @a[scores={can_potion=80}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#しゃがんでから4.25秒後に効果音を鳴らす
execute as @a[scores={can_potion=85}] at @a[scores={can_potion=85}] run playsound minecraft:entity.generic.drink master @a ^ ^1.65 ^0.0001 0.4

#4.5秒間mainhandにhealpotionを持ってスニークしていたら効果音を鳴らす
execute as @a[scores={can_potion=90}] at @a[scores={can_potion=90}] run playsound minecraft:entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001

#4.5秒間mainhandにhealpotionを持ってスニークしていたら回復する
execute as @s[scores={can_potion=90}] run function pvp:system/heal_potion/heal