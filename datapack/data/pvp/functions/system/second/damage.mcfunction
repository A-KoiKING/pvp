# ダメージ同期
 function pvp:system/damage_sync

 # 矢があるか教える
  execute if entity @s[gamemode=survival,nbt=!{Inventory:[{id:"minecraft:arrow"}]}] run title @s actionbar {"text":"インベントリに矢がありません!","color":"yellow"}
# warn-off nbt-items-use-if-items
  execute if entity @s[gamemode=survival,nbt={Inventory:[{id:"minecraft:arrow"}]}] run title @s actionbar ["",{"text":"⚔ ","color":"red"},{"text":"Kill: ","color":"red"},{"score":{"name":"@s","objective":"KillCount"},"color":"white"},{"text":"  ❤ ","color":"aqua"},{"text":"Damage: ","color":"aqua"},{"score":{"name":"@s","objective":"AllDamage"},"color":"white"}]
  execute if entity @s[gamemode=!survival] run title @s actionbar ""