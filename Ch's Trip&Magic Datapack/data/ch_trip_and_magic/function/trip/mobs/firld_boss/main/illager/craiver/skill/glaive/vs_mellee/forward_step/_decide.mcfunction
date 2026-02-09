##note
#通常:7
#ジャンプ:11

execute as @e[tag=ch_tm_target_by_craiver] if score @s ch_tm_attacker_id = @n[tag=ch.has.entity_id] ch_tm_entity_id run tag @s add ch_tm_craiver_target

execute on target if entity @s[distance=11..12] as @n[tag=ch_tm_trip_mobs_craive_illager_vs_mellee] facing entity @n[tag=ch_tm_craiver_target] eyes positioned ^ ^ ^11 if block ~ ~ ~ #ch_trip_and_magic:no_collision_exclude_water unless block ~ ~-1 ~ #ch_trip_and_magic:mobs_dislike unless block ~ ~-2 ~ #ch_trip_and_magic:mobs_dislike unless block ~ ~-3 ~ #ch_trip_and_magic:mobs_dislike run return run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill/glaive/vs_mellee/forward_step/jump/apply
execute on target if entity @s[distance=0..] as @n[tag=ch_tm_trip_mobs_craive_illager_vs_mellee] facing entity @n[tag=ch_tm_craiver_target] eyes positioned ^ ^ ^7 if block ~ ~ ~ #ch_trip_and_magic:no_collision_exclude_water unless block ~ ~-1 ~ #ch_trip_and_magic:mobs_dislike unless block ~ ~-2 ~ #ch_trip_and_magic:mobs_dislike unless block ~ ~-3 ~ #ch_trip_and_magic:mobs_dislike run return run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill/glaive/vs_mellee/forward_step/normal/apply

execute store result score @s ch_trip_boss_random_ex run random value 0..3