# 一時保存計算スコアボードにプレイヤーのUUIDを保存
execute store result score $system UUID.0 run scoreboard players get @s UUID.0
execute store result score $system UUID.1 run scoreboard players get @s UUID.1
execute store result score $system UUID.2 run scoreboard players get @s UUID.2
execute store result score $system UUID.3 run scoreboard players get @s UUID.3

# 矢に保存されているUUIDがプレイヤーのUUIDと一致しているか確認
scoreboard players operation @s UUID.0 -= @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..},sort=nearest,limit=1] UUID.0
scoreboard players operation @s UUID.1 -= @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..},sort=nearest,limit=1] UUID.1
scoreboard players operation @s UUID.2 -= @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..},sort=nearest,limit=1] UUID.2
scoreboard players operation @s UUID.3 -= @e[type=minecraft:armor_stand,tag=ammo,scores={bow.count=2..},sort=nearest,limit=1] UUID.3

# debug
#function pvp:system/uuid/get_nickname
#tellraw @a [{"text":"UUID..:"},{"storage":"pvp:uuid","nbt":"this.Name"},{"text":",UUID:"},{"score":{"name":"@s","objective":"UUID.0"}},{"text":","},{"score":{"name":"@s","objective":"UUID.1"}},{"text":","},{"score":{"name":"@s","objective":"UUID.2"}},{"text":","},{"score":{"name":"@s","objective":"UUID.3"}}] 
#data modify storage pvp:uuid this.Name set value ""
#execute as @a[scores={UUID.0 = 0,UUID.1 = 0,UUID.2 = 0,UUID.3 = 0},limit=1] run function pvp:system/uuid/get_nickname
#tellraw @a [{"text":""},{"storage":"pvp:uuid","nbt":"this.Name","color":"yellow"}]

# タグを追加
execute as @a[scores={UUID.0 = 0,UUID.1 = 0,UUID.2 = 0,UUID.3 = 0},limit=1] run tag @s add using_bow_player

# 一時保存計算スコアボードからプレイヤーのUUIDをリセット
execute store result score @s UUID.0 run scoreboard players get $system UUID.0
execute store result score @s UUID.1 run scoreboard players get $system UUID.1
execute store result score @s UUID.2 run scoreboard players get $system UUID.2
execute store result score @s UUID.3 run scoreboard players get $system UUID.3