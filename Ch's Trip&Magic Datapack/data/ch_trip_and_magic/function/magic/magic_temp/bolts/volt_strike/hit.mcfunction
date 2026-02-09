execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_volt_display] ch_tm_entity_id run tag @s add ch_tm_vs_attacker
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_volt_display] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/damage
tag @n[tag=ch_tm_vs_attacker] remove ch_tm_vs_attacker
function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/bolt
