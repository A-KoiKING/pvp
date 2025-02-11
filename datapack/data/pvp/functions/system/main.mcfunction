# tickを数える
 #MP回復処理
 #制限時間バー(bossbar)の毎秒減少
 #shield_cooltime
 #potion_cooltime
 function pvp:system/second/second

# mainhandにhealpotionを持ってスニークしていたらタグを1にする
 execute as @a if predicate pvp:heal_potion run function pvp:system/heal_potion/can_heal

# mainhandにhealpotionを持ってスニークしていなかったらタグを0にする
 execute as @a unless predicate pvp:heal_potion run scoreboard players set @s can_potion 0

# mainhandもしくはoffhandにシールドがありスニークしていたらcan_shieldを実行
 #Advancementで実行

# 足にjumpbootをつけていてスニークしたらcan_jumpを実行する
 execute as @a[scores={shield_jump=0}] if predicate pvp:jump_boots unless predicate pvp:hand_potion run function pvp:system/jump_boots/can_jump

# 足にjumpbootをつけていてスニークしていなかったら処理を止める
 execute as @a unless predicate pvp:jump_boots run scoreboard players set @s jump 0
 execute as @a unless predicate pvp:jump_boots run scoreboard players set @s can_jump 0

# pvp_startのtitleを表示
 execute as @a[scores={can_title=1..}] run function pvp:system/title_pvp

# xpbar
 function pvp:system/xp

# HPバーの表示
 # 全てのモブとしての常時実行function
  execute as @e[type=#pvp:mobs] at @s run function pvp:system/hp_bar/mob/_
 #  ダメージ表示用のitemエンティティとしての常時実行
  execute as @e[type=item,tag=DmgDisplay] if data entity @s {PortalCooldown:0} run kill @s
## 消してから表示じゃないと見えなくなる
 # プレイヤーのHP表示用エンティティ
  kill @e[type=armor_stand,tag=HP]
 # プレイヤーのHPバー表示
  execute as @a[gamemode=survival] run function pvp:system/hp_bar/player/_

# 死んだらスペクテイターに変更
 execute as @a[scores={death=1..}] if score $play play_pvp matches 1 run gamemode spectator @s
 execute as @a[scores={death=1..}] run scoreboard players set @s heal_ticket 1
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=survival] run effect give @s health_boost infinite 14 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=adventure] run effect give @s health_boost infinite 14 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=survival] run effect give @a saturation infinite 0 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=adventure] run effect give @a saturation infinite 0 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=survival] run effect give @a night_vision infinite 0 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=adventure] run effect give @a night_vision infinite 0 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=survival] run effect give @s instant_health 1 20 true
 execute as @a[scores={heal_ticket=1..,hp=..79},gamemode=adventure] run effect give @s instant_health 1 20 true
 execute as @a[scores={heal_ticket=1..,hp=80},gamemode=survival] run scoreboard players set @s heal_ticket 0
 execute as @a[scores={heal_ticket=1..,hp=80},gamemode=adventure] run scoreboard players set @s heal_ticket 0
 execute as @a[scores={death=1..}] run scoreboard players set @s death 0

# shield_reset
 execute as @a[scores={before_shield=31..}] run scoreboard players set @s before_shield 0
 scoreboard players add @a before_shield 1
 execute as @a[scores={shield_jump=1}] run function pvp:system/shield/reset

# bow
 # 飛び道具チェック 
  execute as @a at @s run function pvp:system/bow/shot
  execute as @e[type=armor_stand,tag=ammo] at @s run function pvp:system/bow/bow
 # 矢があるか教える
  execute as @a if entity @s[gamemode=survival,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run title @s actionbar {"text":"インベントリに矢がありません!","color":"yellow"}
  execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run title @s actionbar ""
  execute as @a if entity @s[gamemode=!survival] run title @s actionbar ""
 # 盾を構えているかのtagを全削除
  tag @a remove shielding

# 試合終了検知
 execute as @a run scoreboard players operation $system DeathCount += @s DeathCount
 execute if score $system DeathCount = $system PlayerCount run function pvp:finish


#debug
