particle end_rod ^ ^ ^ 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.25 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.5 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.75 0.0 0.0 0.0 0 1
particle dust{color:16774739,scale:1} ^ ^ ^ 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:1} ^ ^ ^-0.25 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:1} ^ ^ ^-0.5 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:1} ^ ^ ^-0.75 0.125 0.125 0.125 0 5
execute positioned ^ ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=0,dy=0,dz=0,tag=!ch_tm_magic_lightning_dash_pl] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/damage
scoreboard players add @s ch_tm_magic_lightning_random_count 1
execute if score @s ch_tm_magic_lightning_random_count >= @s ch_tm_magic_lightning_tp_count run return fail
execute store result score @s ch_tm_magic_lightning_random run random value 0..8
execute if score @s ch_tm_magic_lightning_random matches 0 rotated ~ ~ positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 1 rotated ~ ~25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 2 rotated ~ ~-25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 3 rotated ~25 ~ positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 4 rotated ~-25 ~ positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 5 rotated ~25 ~25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 6 rotated ~25 ~-25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 7 rotated ~-25 ~25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
execute if score @s ch_tm_magic_lightning_random matches 8 rotated ~-25 ~-25 positioned ^ ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/end
