#スニークしていたらカウントする
scoreboard players add @s can_jump 1

#1秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=20}] at @a[scores={can_jump=20}] run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001

#2秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=40}] at @a[scores={can_jump=40}] run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001 0.6 0.6

#3秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=60}] at @a[scores={can_jump=60}] run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001 0.6 0.8

#4秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=80}] at @a[scores={can_jump=80}] run playsound entity.experience_orb.pickup master @a ^ ^1.65 ^0.0001 0.6 1

#5秒間、足にjumpbootをつけていてスニークしてたら、音を鳴らす
execute as @a[scores={can_jump=100}] at @a[scores={can_jump=100}] run playsound block.anvil.place master @a ^ ^1.65 ^0.0001 0.6

#jumpを実行する
execute as @s[scores={jump=1..}] at @s[scores={jump=1..}] run function pvp:system/jump_boots/jump