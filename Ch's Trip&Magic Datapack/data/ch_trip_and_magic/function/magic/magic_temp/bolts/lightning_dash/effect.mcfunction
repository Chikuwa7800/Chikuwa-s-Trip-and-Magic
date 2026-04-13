particle end_rod ^ ^ ^ 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.25 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.5 0.0 0.0 0.0 0 1
particle end_rod ^ ^ ^-0.75 0.0 0.0 0.0 0 1
particle dust{color:16774739,scale:0.5} ^ ^ ^ 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:0.5} ^ ^ ^-0.25 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:0.5} ^ ^ ^-0.5 0.125 0.125 0.125 0 5
particle dust{color:16774739,scale:0.5} ^ ^ ^-0.75 0.125 0.125 0.125 0 5
execute positioned ^ ^-0.5 ^ positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=0,dy=0,dz=0,tag=!ch_tm_magic_lightning_dash_pl] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/damage