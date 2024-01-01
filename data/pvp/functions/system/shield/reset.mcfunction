scoreboard players set @s can_shield 0
scoreboard players set @s shield_jump 0

execute as @a at @a run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 2

advancement revoke @s only pvp:reset_shield