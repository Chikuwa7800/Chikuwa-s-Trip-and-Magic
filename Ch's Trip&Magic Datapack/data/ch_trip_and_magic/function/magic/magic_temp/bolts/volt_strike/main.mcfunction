##ch_tm_volt_display
scoreboard players add @s ch_tm_tick 1
particle electric_spark ~ ~ ~ 0.25 0.25 0.25 0. 1 force
particle electric_spark ^ ^ ^-0.5 0.25 0.25 0.25 0. 1 force
particle end_rod ^ ^ ^ 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.1 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.2 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.3 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.4 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.5 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.6 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.7 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.8 0 0 0 0. 5 force
particle end_rod ^ ^ ^-0.9 0 0 0 0. 5 force
particle end_rod ^ ^ ^-1 0 0 0 0. 5 force
particle end_rod ^ ^ ^-1.1 0 0 0 0. 5 force
particle end_rod ^ ^ ^-1.2 0 0 0 0. 5 force
particle end_rod ^ ^ ^-1.3 0 0 0 0. 5 force
particle end_rod ^ ^ ^-1.4 0 0 0 0. 5 force
particle end_rod ^ ^ ^-1.5 0 0 0 0. 5 force
particle dust{color:[0.933,1.000,0.012],scale:0.5} ~ ~ ~ 0.125 0.125 0.125 0.5 10
particle dust{color:[0.933,1.000,0.012],scale:0.5} ^ ^ ^-0.5 0.125 0.125 0.125 0.5 10
particle dust{color:[0.933,1.000,0.012],scale:0.5} ^ ^ ^-1 0.125 0.125 0.125 0.5 10
particle dust{color:[0.933,1.000,0.012],scale:0.5} ^ ^ ^-1.5 0.125 0.125 0.125 0.5 10

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_volt_display] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/hit
execute if entity @s[scores={ch_tm_tick=100..}] run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/bolt
execute unless block ^ ^ ^1.5 #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/bolt
execute unless block ^ ^ ^1 #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/bolt
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/bolt

tp @s ^ ^ ^1.5