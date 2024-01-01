#宣言
scoreboard objectives add can_potion dummy
scoreboard objectives add potion_cooltime dummy
scoreboard objectives add can_title dummy

scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add can_jump dummy

scoreboard objectives add second dummy

scoreboard objectives add MP dummy
scoreboard objectives add MPMax dummy
scoreboard objectives add XPBar dummy
scoreboard objectives add points dummy
scoreboard objectives add diff dummy
scoreboard objectives add level dummy

scoreboard objectives add death deathCount
scoreboard objectives add play_pvp dummy
scoreboard objectives add playtime dummy

scoreboard objectives add hp health
scoreboard objectives add hp_max dummy
scoreboard objectives add HPbar dummy
scoreboard objectives add hp_value dummy
scoreboard objectives add hp_before dummy
scoreboard objectives add hp_time dummy

scoreboard objectives add can_shield dummy
scoreboard objectives add shield_jump dummy

scoreboard objectives add kill playerKillCount

#初期化
scoreboard players set $strength delta.api.launch 5000

scoreboard players set @a MPMax 100
scoreboard players set #1000 XPBar 1000
scoreboard players set #6 XPBar 6
scoreboard players set @a points 0
scoreboard players set @a diff 0
scoreboard players set @a level 0

scoreboard players set @a potion_cooltime 0

scoreboard players set $play play_pvp 0

scoreboard players set #40 HPbar 40

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
bossbar set time max 600
bossbar set time style notched_10
bossbar set time visible false

say Reloaded!