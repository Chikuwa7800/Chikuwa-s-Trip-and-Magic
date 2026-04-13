particle enchant ^ ^ ^ 0.0 0.0 0.0 0 1
particle enchant ^ ^ ^0.25 0.0 0.0 0.0 0 1
particle enchant ^ ^ ^0.5 0.0 0.0 0.0 0 1
particle enchant ^ ^ ^0.75 0.0 0.0 0.0 0 1
particle enchanted_hit ^ ^ ^ 0.0 0.0 0.0 0 1
particle enchanted_hit ^ ^ ^0.25 0.0 0.0 0.0 0 1
particle enchanted_hit ^ ^ ^0.5 0.0 0.0 0.0 0 1
particle enchanted_hit ^ ^ ^0.75 0.0 0.0 0.0 0 1
execute if block ~ ~ ~ #ch_trip_and_magic:no_collision if entity @s[distance=..25] positioned ^ ^ ^1 run return run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/set_location
function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/set_y