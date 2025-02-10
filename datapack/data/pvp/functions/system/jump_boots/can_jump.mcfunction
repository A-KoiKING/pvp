#スニークしていたらカウントする
scoreboard players add @s can_jump 1

#1秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=20}] at @s run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001

#2秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=40}] at @s run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001 0.6 0.6

#2.5秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=50}] at @s run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001 0.6 0.8

#3秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=60}] at @s run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001 0.6 1

#3.25秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=70}] at @s run playsound block.anvil.place master @a ^ ^1.65 ^0.0001 0.6

#jumpを実行する
execute as @s[scores={jump=1..}] at @s run function pvp:system/jump_boots/jump