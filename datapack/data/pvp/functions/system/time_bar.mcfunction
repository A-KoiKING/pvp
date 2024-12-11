execute if score $second playtime matches 1..12150 run scoreboard players remove $second playtime 1 
execute if score $second playtime matches 0..12150 store result bossbar time value run scoreboard players get $second playtime
execute if score $second playtime matches ..0 run bossbar set time visible false