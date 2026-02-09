scoreboard players add @s ch_tm_tick 1

particle dust{color:[0.086,0.031,0.302],scale:0.75} ^0 ^ ^-1 0.5 0.0 0.5 0 5
particle dust{color:[0.186,0.131,0.402],scale:1} ^0.75 ^ ^-0.5 0.0 0.0 0.0 0 2
particle dust{color:[0.186,0.131,0.402],scale:1} ^-0.75 ^ ^-0.5 0.0 0.0 0.0 0 5
particle dust{color:[0.186,0.131,0.402],scale:1} ^0.75 ^ ^-0.75 0.0 0.0 0.0 0 5
particle dust{color:[0.186,0.131,0.402],scale:1} ^-0.75 ^ ^-0.75 0.0 0.0 0.0 0 5
tp @s ^ ^ ^0.5

execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_bosses_cutter] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic_boss:ginga/separate_prosses/cutter/hit
execute if entity @s[scores={ch_tm_tick=350..}] run function ch_trip_and_magic_boss:ginga/separate_prosses/cutter/hit
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic_boss:ginga/separate_prosses/cutter/hit
