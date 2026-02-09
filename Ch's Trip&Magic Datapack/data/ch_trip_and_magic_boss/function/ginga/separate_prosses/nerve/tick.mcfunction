#ch_tm_bosses_nerve
scoreboard players add @s ch_tm_bosses_dummy 1
execute if entity @e[type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_trip_and_magic_bosses_intaract_ginga,distance=..1] run function ch_trip_and_magic_boss:ginga/separate_prosses/nerve/explode
execute if score @s ch_tm_bosses_dummy matches 200.. run function ch_trip_and_magic_boss:ginga/separate_prosses/nerve/explode