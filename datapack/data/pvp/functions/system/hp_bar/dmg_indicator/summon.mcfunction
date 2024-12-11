# ダメージ表示用item召喚
    loot spawn ~ ~ ~ loot pvp:dmg_indicator
# itemの名前にダメージを代入
    execute as @e[type=item,distance=..0] run function pvp:system/hp_bar/dmg_indicator/set_data