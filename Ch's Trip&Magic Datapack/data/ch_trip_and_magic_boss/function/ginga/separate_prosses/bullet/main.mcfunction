scoreboard players add @s ls_tm_tick 1

particle dust{color:[0.404,0.478,0.631],scale:0.75} ^ ^ ^-0.75 0.0125 0.0125 0.0125 0 5
particle dust{color:[0.478,0.592,0.631],scale:1} ^ ^ ^-0.5 0.0125 0.0125 0.0125 0 5
tp @s ^ ^ ^0.5

execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ls_trip_and_magic:mobs,tag=!ch_tm_bosses_void_bullet] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic_boss:ginga/separate_prosses/bullet/hit
execute if entity @s[scores={ls_tm_tick=1000..}] run function ch_trip_and_magic_boss:ginga/separate_prosses/bullet/hit
execute unless block ^ ^ ^ #ls_trip_and_magic:no_collision run function ch_trip_and_magic_boss:ginga/separate_prosses/bullet/hit
