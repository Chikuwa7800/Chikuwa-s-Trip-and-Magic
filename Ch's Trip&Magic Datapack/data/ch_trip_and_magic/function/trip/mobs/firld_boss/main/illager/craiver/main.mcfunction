##Mob
#tag:ch_tm_trip_mobs_craive_illager

execute on target if entity @s[tag=!ch_tm_target_by_craiver] run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/id

execute if entity @e[distance=..50,predicate=ch_trip_and_magic:trip/mobs/target,tag=!ch_tm_trip_mobs_craive_illager_using_skill] run scoreboard players add @s ls_trip_boss_tick 1

execute on target if predicate ch_trip_and_magic:trip/mobs/target_has_mellee as @n[tag=ch_tm_trip_mobs_craive_illager] at @s if entity @s[tag=!ch_tm_trip_mobs_craive_illager_using_skill] run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/type_change/vs_mellee
execute on target if predicate ch_trip_and_magic:trip/mobs/target_has_projectile as @n[tag=ch_tm_trip_mobs_craive_illager] at @s if entity @s[tag=!ch_tm_trip_mobs_craive_illager_using_skill] run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/type_change/vs_projectile
execute on target if predicate ch_trip_and_magic:trip/mobs/target_has_both as @n[tag=ch_tm_trip_mobs_craive_illager] at @s if entity @s[tag=!ch_tm_trip_mobs_craive_illager_using_skill] run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/type_change/vs_both
execute on target unless predicate ch_trip_and_magic:trip/mobs/target_has_mellee unless predicate ch_trip_and_magic:trip/mobs/target_has_projectile unless predicate ch_trip_and_magic:trip/mobs/target_has_both as @n[tag=ch_tm_trip_mobs_craive_illager] at @s if entity @s[tag=!ch_tm_trip_mobs_craive_illager_using_skill] run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/type_change/vs_others

execute if score @s ls_trip_boss_tick matches 30 store result score @s ch_trip_boss_random run random value 0..100
execute if score @s ls_trip_boss_tick matches 30 if score @s ch_trip_boss_random matches 85.. run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill

execute if score @s ls_trip_boss_tick matches 40 store result score @s ch_trip_boss_random run random value 0..100
execute if score @s ls_trip_boss_tick matches 40 if score @s ch_trip_boss_random matches 75.. run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill

execute if score @s ls_trip_boss_tick matches 50 store result score @s ch_trip_boss_random run random value 0..100
execute if score @s ls_trip_boss_tick matches 50 if score @s ch_trip_boss_random matches 50.. run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill

execute if score @s ls_trip_boss_tick matches 60.. run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill