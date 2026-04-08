# ダメージを10分の1にして表示
scoreboard players operation @s TmpDamage = @s NoBowDamage
# scoreboard players operation @s TmpDamage /= #10 10
scoreboard players operation @s TmpDamage += @s BowDamage

scoreboard players operation @s AllDamage = @s TmpDamage