# ダメージ表示値
    scoreboard players remove $Health Temporary 512
# モブの高さごとの表示位置の調整
    execute if entity @s[type=#pvp:size/short] positioned ~ ~0.9 ~ run function pvp:system/hp_bar/dmg_indicator/summon
    execute if entity @s[type=#pvp:size/medium] positioned ~ ~1.3 ~ run function pvp:system/hp_bar/dmg_indicator/summon
    execute if entity @s[type=#pvp:size/human] positioned ~ ~1.8 ~ run function pvp:system/hp_bar/dmg_indicator/summon
    execute if entity @s[type=#pvp:size/tall] positioned ~ ~2.4 ~ run function pvp:system/hp_bar/dmg_indicator/summon
# リセット
    scoreboard players reset $DmgColor