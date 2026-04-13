particle end_rod ^ ^ ^ 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.25 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.5 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.75 0.0 0.0 0.0 0 1
particle dust{color:16774739,scale:1} ^ ^ ^ 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:1} ^ ^ ^-0.25 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:1} ^ ^ ^-0.5 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:1} ^ ^ ^-0.75 0.125 0.125 0.125 0 5
execute positioned ^ ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=0,dy=0,dz=0,tag=!ch_tm_magic_lightning_dash_pl] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/damage
scoreboard players add @s ch_tm_magic_lightning_random_count_1 1
execute if score @s ch_tm_magic_lightning_random_count_1 >= @s ch_tm_magic_lightning_tp_count run return fail
execute if score @s ch_tm_magic_lightning_random_1 matches 0 rotated ~ ~ positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 1 rotated ~ ~-50 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 2 rotated ~ ~50 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 3 rotated ~-50 ~ positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 4 rotated ~50 ~ positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 5 rotated ~-50 ~-50 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 6 rotated ~-50 ~50 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 7 rotated ~50 ~-25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
execute if score @s ch_tm_magic_lightning_random_1 matches 8 rotated ~50 ~50 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
