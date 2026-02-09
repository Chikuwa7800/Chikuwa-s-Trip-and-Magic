function ch_trip_and_magic:magic/main
function ch_trip_and_magic:trip/main
function ch_trip_and_magic:particle/main

execute as @e if predicate ch_trip_and_magic:score/used_stick run function ch_trip_and_magic:reset_usestick

execute as @a[scores={ls_trip_magic_install=1..}] at @s run function ch_trip_and_magic:join_the_world/check

execute as @e[tag=ls_cutting_board] at @s run function ch_trip_and_magic:trip/cook/cutting_board/set

tag @e[nbt={CollarColor:14b}] add ch_tame
tag @e[nbt={Tame:1b}] add ch_tame

execute as @e at @s store result score @s ls_trip_magic_health run data get entity @s Health

execute as @e[tag=ch_tm_spawned,tag=!ch_tm_spawneed_initted] at @s run function ch_trip_and_magic:debug/z_egg_def

tag @a[tag=!ch_tm_was_on_ground,predicate=ch_trip_and_magic:acshident/location_check/on_ground] add ch_tm_was_on_ground

tag @a[predicate=ch_trip_and_magic:acshident/jump] add ch_tm_is_jumping

tag @a[tag=ch_tm_is_jumping,tag=!ch_tm_did_skywalk,predicate=!ch_trip_and_magic:acshident/jump,tag=!ch_tm_hunger] add ch_tm_can_skywalk
tag @a[tag=ch_tm_is_jumping,predicate=ch_trip_and_magic:acshident/location_check/on_ground] remove ch_tm_is_jumping
tag @a[tag=!ch_tm_is_jumping,tag=ch_tm_can_skywalk] remove ch_tm_can_skywalk
tag @a[tag=ch_tm_hunger,tag=ch_tm_can_skywalk] remove ch_tm_can_skywalk
tag @a[tag=!ch_tm_is_jumping,tag=ch_tm_did_skywalk] remove ch_tm_did_skywalk

tag @a[scores={ch_tm_foodlevel=..6}] add ch_tm_hunger
tag @a[scores={ch_tm_foodlevel=7..}] remove ch_tm_hunger






























execute as @a[scores={ls_trip_magic_death=1..}] at @s run function ch_trip_and_magic:death_reset

#execute at @a[tag=ch_tm_using_shield] run particle minecraft:heart ~ ~ ~ 0 0 0 0 10

