#tickを数える
 #MP回復処理
 #制限時間バー(bossbar)の毎秒減少
 #shield_cooltime
 #potion_cooltime
function pvp:system/second/second

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
# 全てのモブとしての常時実行function
execute as @e[type=#pvp:mobs] at @s run function pvp:system/hp_bar/mob/_
# ダメージ表示用のitemエンティティとしての常時実行
execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s
# プレイヤーのHPバー表示
execute as @a[gamemode=survival] run function pvp:system/hp_bar/player/_

#死んだらスペクテイターに変更
execute as @a[scores={death=1..}] if score $play play_pvp matches 1 run gamemode spectator @s
execute as @a[scores={death=1..}] if score $play play_pvp matches 1 run scoreboard players set @s death 0

#shield_reset
execute as @a[scores={before_shield=31..}] run scoreboard players set @s before_shield 0
scoreboard players add @a before_shield 1
execute as @a[scores={shield_jump=1}] run function pvp:system/shield/reset

#bow
# 飛び道具チェック 
    execute as @e[type=armor_stand,tag=ammo] at @s run function pvp:system/bow/bow

    execute as @a at @s run function pvp:system/bow/shot

scoreboard players reset @a bow