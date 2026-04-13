scoreboard players add @s ch_tm_magic_lightning_tp_count 1
function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/effect
execute if score @s ch_tm_magic_lightning_tp_count matches ..18 if block ^ ^ ^1 #ch_trip_and_magic:no_collision positioned ^ ^ ^1 run return run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/tp_loop

execute anchored feet run tp @s ^ ^ ^-0.001
function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt/start
function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_1/start
function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/bolt_2/start

tag @s remove ch_tm_magic_lightning_dash_pl