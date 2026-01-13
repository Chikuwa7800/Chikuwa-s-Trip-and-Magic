execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ls_tm_wind_display] ch_tm_entity_id run tag @s add ch_tm_zb_attacker
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_zepher_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_wind_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/damage
tag @n[tag=ch_tm_zb_attacker] remove ch_tm_zb_attacker
function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind