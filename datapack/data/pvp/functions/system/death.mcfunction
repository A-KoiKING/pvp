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