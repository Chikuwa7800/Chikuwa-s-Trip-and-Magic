execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ls_tm_fireball_display] ch_tm_entity_id run tag @s add ch_tm_bf_attacker
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_fireball_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/fires/blaze_flare/damage
tag @n[tag=ch_tm_bf_attacker] remove ch_tm_bf_attacker
function ls_trip_and_magic:magic/magic_temp/fires/blaze_flare/fire