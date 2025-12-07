#ch_tm_bosses_nerve
scoreboard players add @s ch_tm_bosses_dummy 1
execute if entity @e[type=#ls_trip_and_magic:mobs_and_player_and_collision_entity,tag=!ch_trip_and_magic_bosses_intaract_ginga,distance=..1] run function ch_trip_and_magic_boss:ginga/separate_prosses/nerve/explode
execute if score @s ch_tm_bosses_dummy matches 200.. run function ch_trip_and_magic_boss:ginga/separate_prosses/nerve/explode