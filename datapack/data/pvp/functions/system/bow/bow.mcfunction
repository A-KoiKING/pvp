# Tick加算
scoreboard players add @s bow.count 1

# ホーミング
    execute if entity @s[scores={bow.count=5..20}] facing entity @e[type=!ender_dragon,tag=HomingTarget,distance=..100,sort=nearest,limit=1] eyes positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-2 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~
# 　停止
    execute if entity @s[scores={bow.count=..5}] if entity @e[type=!ender_dragon,tag=HomingTarget,distance=..17,sort=nearest,limit=1] positioned ^ ^ ^100 if entity @e[type=!ender_dragon,tag=HomingTarget,distance=..100,sort=nearest,limit=1] run function pvp:system/bow/near_active

function pvp:system/bow/move