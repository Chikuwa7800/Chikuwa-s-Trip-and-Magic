tag @s remove ch_tm.magic_ball.tick
tag @s add ch_tm.magic_ball.hit
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force
$function $(hit_particle)
$function $(hit_sound)
$function $(hit_add_action)
function ch_trip_magic_objects:entities/magic_ball/hit_as_entity with entity @s data
kill @s