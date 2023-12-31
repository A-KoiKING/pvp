execute if score $second playtime matches 1..600 if score $second second matches 20 run scoreboard players remove $second playtime 1 
execute if score $second playtime matches 0..600 store result bossbar time value run scoreboard players get $second playtime
execute if score $second playtime matches ..0 run bossbar set time visible false