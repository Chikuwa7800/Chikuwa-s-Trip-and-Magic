execute as @e[predicate=ch_trip_and_magic:acshident/location_check/stone_cutter,type=!#ch_trip_and_magic:non_injure_by_stonecutter] at @s run function ch_trip_and_magic:trip/appdata/stone_cutter
effect give @a[predicate=ch_trip_and_magic:acshident/location_check/sakura] regeneration 1 0

execute as @e[type=item,predicate=ch_trip_and_magic:acshident/is_torch] at @s positioned ~ ~-0.25 ~ if block ~ ~ ~ campfire[lit=false] run function ch_trip_and_magic:trip/appdata/camp_fire
execute as @e[type=item,predicate=ch_trip_and_magic:acshident/is_soul_torch] at @s if block ~ ~-0.25 ~ soul_campfire[lit=false] run function ch_trip_and_magic:trip/appdata/soul_camp_fire

execute as @e[tag=cs_bone_spawner_core] at @s run function ch_trip_and_magic:trip/appdata/bone_spawner/main

execute as @e[type=#illager,predicate=ch_trip_and_magic:entities/raiding_illagers,tag=!set_loot] at @s run function ch_trip_and_magic:trip/appdata/raiding

execute as @e[type=evoker,tag=!set_loot] at @s store result score @s ch_tm_random run random value 1..10
execute as @e[type=evoker,tag=!set_loot,scores={ch_tm_random=7..10}] at @s run function ch_trip_and_magic:trip/appdata/change_to_having_staff
tag @e[type=evoker,tag=!set_loot] add set_loot
execute as @e[type=villager,tag=!set_loot] at @s run data merge entity @s {DeathLootTable:"ch_trip_and_magic:entities/villager"}
tag @e[type=villager,tag=!set_loot] add set_loot

execute as @e[tag=ch_tm_evoker_have_staff] at @s run particle dust{color:[0.016,0.345,0.302],scale:0.5} ~ ~1.5 ~ 0.1 0.1 0.1 0. 10 force