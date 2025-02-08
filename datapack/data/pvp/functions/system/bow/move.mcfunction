# パーティクル
    execute if entity @s[scores={bow.count=1..}] run particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.1 1 force @a[distance=..120]
    
# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={recursion=1..}] run scoreboard players operation @s recursion = @s bow.spead

# 前進
    execute if entity @s[scores={recursion=1..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #pvp:no_wall run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s recursion 1
    scoreboard players remove @s bow.range 1

# ヒット
    execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[type=!#pvp:not_block,type=!ender_dragon,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,dx=0,sort=nearest,limit=1] positioned ~-0.8 ~-0.8 ~-0.8 if entity @e[type=!#pvp:not_block,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] run damage @s 100

# 壁の衝突判定
    execute unless block ^ ^ ^0.5 #pvp:no_wall run kill @s

# キル
    execute if entity @s[scores={bow.range=0}] run kill @s

# 再帰
    execute if entity @s[scores={recursion=1..}] at @s run function pvp:system/bow/move