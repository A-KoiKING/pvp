#宣言
scoreboard objectives add can_potion dummy
scoreboard objectives add potion_cooltime dummy
scoreboard objectives add can_title dummy

scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add can_jump dummy

scoreboard objectives add second dummy

scoreboard objectives add MPcount dummy
scoreboard objectives add MP dummy
scoreboard objectives add MPMax dummy
scoreboard objectives add XPBar dummy
scoreboard objectives add points dummy
scoreboard objectives add diff dummy
scoreboard objectives add level dummy
scoreboard objectives add 20 dummy

scoreboard objectives add death deathCount
scoreboard objectives add play_pvp dummy
scoreboard objectives add playtime dummy
scoreboard objectives add heal_ticket dummy

scoreboard objectives add can_shield dummy
scoreboard objectives add shield_jump dummy
scoreboard objectives add before_shield dummy
scoreboard objectives add shield_cooltime dummy

scoreboard objectives add bow minecraft.used:bow
scoreboard objectives add burstcount dummy
scoreboard objectives add bow.count dummy
scoreboard objectives add bow.spead dummy
scoreboard objectives add bow.range dummy
scoreboard objectives add recursion dummy

scoreboard objectives add kill playerKillCount
scoreboard objectives add PlayerCount dummy
scoreboard objectives add DeathCount deathCount

# bow
scoreboard objectives add arrow_yaw dummy
scoreboard objectives add arrow_pitch dummy
scoreboard objectives add bow_using dummy
scoreboard objectives add bow_using_time dummy
scoreboard objectives add bow_charge dummy
scoreboard objectives add -1 dummy

# hp_bar
scoreboard objectives add mh.hp dummy
scoreboard objectives add mh.hp_max dummy
scoreboard objectives add mh.hp_ratio dummy
scoreboard objectives add Temporary dummy
scoreboard objectives add Constant dummy
scoreboard players set #40 Constant 40

scoreboard objectives add hp health
scoreboard objectives add hp_max dummy
scoreboard objectives add HPbar dummy
scoreboard objectives add hp_value dummy
scoreboard objectives add hp_before dummy
scoreboard objectives add hp_time dummy

#初期化
scoreboard objectives setdisplay list kill

scoreboard players set $strength delta.api.launch 5000

scoreboard players set #-1 -1 -1
scoreboard players set @a MPMax 100
scoreboard players set #1000 XPBar 1000
scoreboard players set #6 XPBar 6
scoreboard players set @a points 0
scoreboard players set @a diff 0
scoreboard players set @a level 0
scoreboard players set #20 20 20
scoreboard players set @a MP 100
scoreboard players set @a MPcount 2000

scoreboard players set $play play_pvp 0

scoreboard players set @a bow_using 0
scoreboard players set @a bow_using_time 0

#初期リス固定
setworldspawn 0 180 0

#ワールドボーダー初期化
worldborder center 0 0

#ゲームルール変更
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule fallDamage false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doTraderSpawning false
gamerule spawnRadius 1
gamerule doMobLoot false
gamerule disableRaids false
gamerule forgiveDeadPlayers false
#gamerule sendCommandFeedback false

#タイマー,ゲージ初期化
bossbar add time "安全地帯縮小完了までの残り時間"
bossbar set time color red
bossbar set time max 12000
bossbar set time style notched_10
bossbar set time visible false

# UUID
execute unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon item_display ~ ~ ~ {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}
scoreboard objectives add UUID.0 dummy
scoreboard objectives add UUID.1 dummy
scoreboard objectives add UUID.2 dummy
scoreboard objectives add UUID.3 dummy

# プレイヤーのUUIDをスコアボードに設定
execute as @a run function pvp:system/uuid/setting

say Reloaded!

# debug用スコアボード
scoreboard objectives remove score
scoreboard objectives add score dummy
scoreboard objectives setdisplay sidebar score