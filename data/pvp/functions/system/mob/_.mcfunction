### 常時実行function (as @e[type=#pvp:mobs])

# モブ召喚時に初期処理
    execute if entity @s[tag=!Init] run function pvp:system/mob/init
# HPが変更された時の検知
    execute unless data entity @s {Health:512.0f} run function pvp:system/mob/hp_changed
# HP表示時間切れ
    execute if data entity @s {PortalCooldown:1} run function pvp:system/hp_bar/reset