#軽く撃っているときの誤動作をリセット
execute if score @s bow_using matches 2.. run scoreboard players set @s bow_using_time 0

#弓を引いているときは0にする
scoreboard players set @s bow_using 0

#弓を引いているときは1にする
execute if score @s bow_using_time matches 1.. run scoreboard players add @s bow_using_time 1

#実績をロック
advancement revoke @s only pvp:bow_use