# プレイヤーからUUIDを取得し、ストレージに保存
data modify storage pvp:uuid UUID set from entity @s UUID

# プレイヤーのUUIDをストレージから個人のスコアボードに保存
execute store result score @s UUID.0 run data get storage pvp:uuid UUID[0]
execute store result score @s UUID.1 run data get storage pvp:uuid UUID[1]
execute store result score @s UUID.2 run data get storage pvp:uuid UUID[2]
execute store result score @s UUID.3 run data get storage pvp:uuid UUID[3]

# ストレージを削除
data remove storage pvp:uuid UUID