# orbの削除
    kill @e[type=experience_orb]

# レベル129 はポイントが 0~1002
    xp set @a 129 levels
    execute as @a store result score @s points run xp query @s points

# MPの割合(0~1000%)との違いを用いて「経験値」に代入する値を求める
    execute as @a run scoreboard players operation @s diff = @s MP
    execute as @a run scoreboard players operation @s diff *= #1000 XPBar
    execute as @a run scoreboard players operation @s diff /= @s MPMax
    execute as @a run scoreboard players operation @s diff -= @s points
    execute as @a run scoreboard players operation @s diff /= #6 XPBar
    execute as @a run scoreboard players operation @s points += @s diff

# スコアの値を「経験値」に代入
    xp set @a 0 points
    execute as @a if score @s points matches 512.. run xp add @s[scores={points=512..}] 512 points
    execute as @a if score @s points matches 512.. run scoreboard players remove @s[scores={points=512..}] points 512
    execute as @a if score @s points matches 256.. run xp add @s[scores={points=256..}] 256 points
    execute as @a if score @s points matches 256.. run scoreboard players remove @s[scores={points=256..}] points 256
    execute as @a if score @s points matches 128.. run xp add @s[scores={points=128..}] 128 points
    execute as @a if score @s points matches 128.. run scoreboard players remove @s[scores={points=128..}] points 128
    execute as @a if score @s points matches 64.. run xp add @s[scores={points=64..}] 64 points
    execute as @a if score @s points matches 64.. run scoreboard players remove @s[scores={points=64..}] points 64
    execute as @a if score @s points matches 32.. run xp add @s[scores={points=32..}] 32 points
    execute as @a if score @s points matches 32.. run scoreboard players remove @s[scores={points=32..}] points 32
    execute as @a if score @s points matches 16.. run xp add @s[scores={points=16..}] 16 points
    execute as @a if score @s points matches 16.. run scoreboard players remove @s[scores={points=16..}] points 16
    execute as @a if score @s points matches 8.. run xp add @s[scores={points=8..}] 8 points
    execute as @a if score @s points matches 8.. run scoreboard players remove @s[scores={points=8..}] points 8
    execute as @a if score @s points matches 4.. run xp add @s[scores={points=4..}] 4 points
    execute as @a if score @s points matches 4.. run scoreboard players remove @s[scores={points=4..}] points 4
    execute as @a if score @s points matches 2.. run xp add @s[scores={points=2..}] 2 points
    execute as @a if score @s points matches 2.. run scoreboard players remove @s[scores={points=2..}] points 2
    execute as @a if score @s points matches 1.. run xp add @s[scores={points=1..}] 1 points
    execute as @a if score @s points matches 1.. run scoreboard players remove @s[scores={points=1..}] points 1

# スコアの値を「レベルの値」に代入
    xp set @a 0 levels
    scoreboard players operation @a level = @a MP
    execute as @a if score @s level matches 128.. run xp add @s[scores={level=128..}] 128 levels
    execute as @a if score @s level matches 128.. run scoreboard players remove @s[scores={level=128..}] level 128
    execute as @a if score @s level matches 64.. run xp add @s[scores={level=64..}] 64 levels
    execute as @a if score @s level matches 64.. run scoreboard players remove @s[scores={level=64..}] level 64
    execute as @a if score @s level matches 32.. run xp add @s[scores={level=32..}] 32 levels
    execute as @a if score @s level matches 32.. run scoreboard players remove @s[scores={level=32..}] level 32
    execute as @a if score @s level matches 16.. run xp add @s[scores={level=16..}] 16 levels
    execute as @a if score @s level matches 16.. run scoreboard players remove @s[scores={level=16..}] level 16
    execute as @a if score @s level matches 8.. run xp add @s[scores={level=8..}] 8 levels
    execute as @a if score @s level matches 8.. run scoreboard players remove @s[scores={level=8..}] level 8
    execute as @a if score @s level matches 4.. run xp add @s[scores={level=4..}] 4 levels
    execute as @a if score @s level matches 4.. run scoreboard players remove @s[scores={level=4..}] level 4
    execute as @a if score @s level matches 2.. run xp add @s[scores={level=2..}] 2 levels
    execute as @a if score @s level matches 2.. run scoreboard players remove @s[scores={level=2..}] level 2
    execute as @a if score @s level matches 1.. run xp add @s[scores={level=1..}] 1 levels
    execute as @a if score @s level matches 1.. run scoreboard players remove @s[scores={level=1..}] level 1

# 効果音を消す
    stopsound @a player entity.player.levelup