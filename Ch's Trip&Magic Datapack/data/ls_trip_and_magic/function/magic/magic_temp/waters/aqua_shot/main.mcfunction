##ls_tm_waterball_display
scoreboard players add @s ls_tm_tick 1
particle splash ~ ~ ~ 0.1 0.1 0.1 0. 3 force
particle dust{color:[0.118,0.153,0.635],scale:1.5} ^ ^ ^-0.5 0.1 0.1 0.1 0.2 20 force

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:mobs,tag=!ls_tm_waterball_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/hit
execute if entity @s[scores={ls_tm_tick=300..}] run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/water
execute unless block ^ ^ ^ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/water

execute if block ^ ^ ^ lava run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/water

tp @s ^ ^ ^0.5