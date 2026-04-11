#MP回復処理
execute if score @s MPcount matches ..1999 run scoreboard players add @s MPcount 1
scoreboard players operation @s MP = @s MPcount
scoreboard players operation @s MP /= #20 20

#shield_cooltime
execute if score @s shield_cooltime matches 1.. run scoreboard players remove @s shield_cooltime 1
execute if score @s shield_cooltime matches 1 at @s run playsound minecraft:block.note_block.bell master @a ^ ^1.65 ^0.0001

#potionのクールタイムをカウントする
execute if score @s potion_cooltime matches 1.. run scoreboard players remove @s potion_cooltime 1
execute if score @s potion_cooltime matches 1 at @s run function pvp:system/heal_potion/reset

# warn-off nbt-items-use-if-items
execute if score @s potion_cooltime matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:2}}]}] run function pvp:system/heal_potion/heal_reset

#mainhandにhealpotionを持ってスニークしていたらタグを1にする
execute if predicate pvp:heal_potion run function pvp:system/heal_potion/can_heal

#mainhandにhealpotionを持ってスニークしていなかったらタグを0にする
execute unless predicate pvp:heal_potion run scoreboard players set @s can_potion 0

#足にjumpbootをつけていてスニークしたらcan_jumpを実行する
execute if score @s shield_jump matches 0 if predicate pvp:jump_boots unless predicate pvp:hand_potion run function pvp:system/jump_boots/can_jump

#足にjumpbootをつけていてスニークしていなかったら処理を止める
execute unless predicate pvp:jump_boots run function pvp:system/jump_boots/reset

#shield_reset
execute if score @s before_shield matches 31.. run scoreboard players set @s before_shield 0
scoreboard players add @s before_shield 1
execute if score @s shield_jump matches 1.. run function pvp:system/shield/reset

#盾を構えているかのtagを全削除
tag @s remove shielding

# pvp_startのtitleを表示
 execute if score @s can_title matches 1.. run function pvp:system/title_pvp