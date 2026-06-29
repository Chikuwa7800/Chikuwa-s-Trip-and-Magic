scoreboard players add @s ch_tm_magic_oblivion_loop 1
function ch_trip_and_magic:magic/magic_temp/void/oblivion/tp_effect
execute if score @s ch_tm_magic_oblivion_loop matches ..24 if block ^ ^ ^1 #ch_trip_and_magic:no_collision positioned ^ ^ ^1 run return run function ch_trip_and_magic:magic/magic_temp/void/oblivion/tp_loop

execute anchored feet run tp @s ^ ^ ^-0.001
tag @s remove ch_tm_magic_oblivion_pl