# オオカミだけバグる(違う実装するかなぁ)
# モブHPデータの取得
    execute store result score $Health Temporary run data get entity @s Health
# ダメージを受けた場合
    execute if score $Health Temporary matches ..511 run function pvp:system/hp_bar/mob/hurt
# HPを回復した場合
    execute if score $Health Temporary matches 513.. run function pvp:system/hp_bar/mob/heal
# リセット
    scoreboard players reset $Health