# tickを数える
 #MP回復処理
 #shield_cooltime
 #potion_cooltime
 #mainhandにhealpotionを持ってスニークしていたらタグを1にする
 #mainhandにhealpotionを持ってスニークしていなかったらタグを0にする
 #足にjumpbootをつけていてスニークしたらcan_jumpを実行する
 #足にjumpbootをつけていてスニークしていなかったら処理を止める
 #shield_reset
 #盾を構えているかのtagを全削除
 #pvp_startのtitleを表示
 execute as @a run function pvp:system/second/second

# 制限時間バーの毎秒減少
 function pvp:system/time_bar

# mainhandもしくはoffhandにシールドがありスニークしていたらcan_shieldを実行
 #Advancementで実行

# xpbar
 function pvp:system/xp

# HPバーの表示
 # 全てのモブとしての常時実行function
  execute as @e[distance=0..,type=#pvp:mobs] at @s run function pvp:system/hp_bar/mob/_
 #  ダメージ表示用のitemエンティティとしての常時実行
  execute as @e[distance=0..,tag=DmgDisplay,type=item] if data entity @s {PortalCooldown:0} run kill @s
## 消してから表示じゃないと見えなくなる
 # プレイヤーのHP表示用エンティティ
  kill @e[distance=0..,tag=HP,type=armor_stand]
 # プレイヤーのHPバー表示
  execute as @a[gamemode=survival] run function pvp:system/hp_bar/player/_

# 死んだらスペクテイターに変更
  function pvp:system/death

# bow
 # 飛び道具チェック 
  execute as @a at @s run function pvp:system/bow/shot
  execute as @e[distance=0..,tag=ammo,type=armor_stand] at @s run function pvp:system/bow/bow


# ダメージ同期
# 矢があるか教える
# damageとkillの表示
 execute as @a run function pvp:system/second/damage

# 試合終了検知(一番最後に実行する)
 scoreboard players set $system DeathCount 1
 execute as @a run scoreboard players operation $system DeathCount += @s DeathCount
 execute unless score $system PlayerCount matches 1 if score $play play_pvp matches 1 if score $system DeathCount = $system PlayerCount run function pvp:finish
 execute if score $system PlayerCount matches 1 if score $play play_pvp matches 1 if score $system DeathCount matches 2.. run function pvp:finish

# テスト村人の回復
 execute as @e[tag=test,distance=0..,nbt={HurtTime:10s},type=villager] run function pvp:system/second/villager
 execute as @e[tag=test,distance=0..,nbt=!{Health:1000.0f},type=villager] run scoreboard players add @s test_hp 1
 execute as @e[tag=test,distance=0..,type=villager] if score @s test_hp matches 100.. run effect give @s minecraft:regeneration 2 15 true

#debug
# execute as @a run title @s actionbar ["",{"text":"can: ","color":"blue"},{"score":{"name":"@s","objective":"can_shield"},"color":"white"},{"text":" cooltime: ","color":"yellow"},{"score":{"name":"@s","objective":"shield_cooltime"},"color":"white"},{"text":" jump: ","color":"green"},{"score":{"name":"@s","objective":"shield_jump"},"color":"white"},{"text":" before: ","color":"black"},{"score":{"name":"@s","objective":"before_shield"},"color":"white"}]