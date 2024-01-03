#地形破壊
summon armor_stand ^ ^ ^1 {Marker:true,NoGravity:true,Tags:["dig"]}

execute as @e[tag=dig] at @e[tag=dig] run fill ~1 ~2 ~2 ~-1 ~ ~-1 air destroy

#跳躍
function delta:api/launch_looking

#reset
kill @e[tag=dig]