#tickを数える
 #MP回復処理
 #shield_cooltime
function pvp:system/second/second

#制限時間バーの毎秒減少
function pvp:system/time_bar

#mainhandにhealpotionを持ってスニークしていたらタグを1にする
execute as @a if predicate pvp:heal_potion run function pvp:system/heal_potion/can_heal

#mainhandにhealpotionを持ってスニークしていなかったらタグを0にする
execute as @a unless predicate pvp:heal_potion run scoreboard players set @s can_potion 0

#mainhandもしくはoffhandにシールドがありスニークしていたらcan_shieldを実行
#Advancementで実行

#足にjumpbootをつけていてスニークしたらcan_jumpを実行する
execute as @a[scores={shield_jump=0}] if predicate pvp:jump_boots unless predicate pvp:hand_potion run function pvp:system/jump_boots/can_jump

#足にjumpbootをつけていてスニークしていなかったら処理を止める
execute as @a unless predicate pvp:jump_boots run scoreboard players set @s jump 0
execute as @a unless predicate pvp:jump_boots run scoreboard players set @s can_jump 0

#pvp_startのtitleを表示
execute as @a[scores={can_title=1..}] run function pvp:system/title_pvp

#xpbar
function pvp:system/xp

#HPバーの表示
execute as @a[gamemode=survival] run function pvp:system/hpbar/hp_bar

#死んだらスペクテイターに変更
execute as @a[scores={death=1..}] if score $play play_pvp matches 1 run gamemode spectator @s
execute as @a[scores={death=1..}] if score $play play_pvp matches 1 run scoreboard players set @s death 0

#shield_reset
execute as @a[scores={before_shield=31..}] run scoreboard players set @s before_shield 0
scoreboard players add @a before_shield 1
execute as @a[scores={shield_jump=1}] run function pvp:system/shield/reset