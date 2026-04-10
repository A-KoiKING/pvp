# ここで弓を引いているときに加算
execute if score @s bow_using matches 0 run scoreboard players add @s bow_using_time 1
execute if score @s bow_using matches 1.. run scoreboard players set @s bow_using_time 0

# チャージ段階ごとの効果音再生
execute if score @s bow_using_time matches 3 run playsound pvp:bow_charge master @s ~ ~ ~ 1 1
execute if score @s bow_using_time matches 10 run playsound pvp:bow_charge master @s ~ ~ ~ 1 1.5
execute if score @s bow_using_time matches 30 run playsound pvp:bow_charge master @s ~ ~ ~ 1 2

# 流石に10分引いてたらヤバそうだからリセット
execute if score @s bow_using matches 12000 run scoreboard players set @s bow_using 1

# 全体で弓を引いていないことを検知するために常時加算
scoreboard players add @s bow_using 1

# 弓を撃ったことを検知
execute at @s if score @s bow matches 1.. if score @s bow_using_time matches 30.. run function pvp:system/bow/charge3
execute at @s if score @s bow matches 1.. if score @s bow_using_time matches 10..29 run function pvp:system/bow/charge2
execute at @s if score @s bow matches 1.. if score @s bow_using_time matches 0..9 run function pvp:system/bow/charge1
execute if score @s bow matches 1.. run scoreboard players set @s bow_using_time 0

# 矢を削除
execute if score @s bow matches 1.. at @s run kill @e[type=arrow,sort=nearest,limit=1]

# 既存の弾にusing_bow.countタグを追加
execute as @e[type=armor_stand,tag=ammo] if score @s bow.count matches 1.. run tag @s add using_bow.count

# 弾を生成
execute unless predicate pvp:sneak run function pvp:system/bow/ammo_gen_no_sneak
execute if predicate pvp:sneak run function pvp:system/bow/ammo_gen_sneak

# 新しい弾に射手のUUIDをセット
scoreboard players operation @e[type=armor_stand,tag=just_spawned] UUID.0 = @s UUID.0
scoreboard players operation @e[type=armor_stand,tag=just_spawned] UUID.1 = @s UUID.1
scoreboard players operation @e[type=armor_stand,tag=just_spawned] UUID.2 = @s UUID.2
scoreboard players operation @e[type=armor_stand,tag=just_spawned] UUID.3 = @s UUID.3

# 向きを復元
execute if score @s burstcount matches 1.. at @s run function pvp:system/bow/restorerotation

# just_spawnedタグを削除 (次のプレイヤーの処理に影響しないように)
tag @e[type=armor_stand,tag=just_spawned] remove just_spawned

# バースト数を減らす
scoreboard players remove @s[scores={burstcount=1..}] burstcount 1

# bowスコアをリセット
execute if score @s bow matches 1.. run scoreboard players set @s bow 0