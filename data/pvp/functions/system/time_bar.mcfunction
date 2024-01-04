execute if score $second playtime matches 1..12000 run scoreboard players remove $second playtime 1 
execute if score $second playtime matches 0..12000 store result bossbar time value run scoreboard players get $second playtime
execute if score $second playtime matches ..0 run bossbar set time visible false