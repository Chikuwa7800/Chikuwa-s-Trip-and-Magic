function ls_trip_and_magic:magic/main
function ls_trip_and_magic:trip/main
function ls_trip_and_magic:particle/main

execute as @e if predicate ls_trip_and_magic:score/used_stick run function ls_trip_and_magic:reset_usestick

execute as @a[scores={ls_trip_magic_install=1..}] at @s run function ls_trip_and_magic:join_the_world/check

execute as @e[tag=ls_cutting_board] at @s run function ls_trip_and_magic:trip/cook/cutting_board/set

tag @e[nbt={CollarColor:14b}] add ch_tame
tag @e[nbt={Tame:1b}] add ch_tame

execute as @e at @s store result score @s ls_trip_magic_health run data get entity @s Health

execute as @a[scores={ls_trip_magic_death=1..}] at @s run function ls_trip_and_magic:death_reset

#execute at @a[tag=ls_tm_using_shield] run particle minecraft:heart ~ ~ ~ 0 0 0 0 10