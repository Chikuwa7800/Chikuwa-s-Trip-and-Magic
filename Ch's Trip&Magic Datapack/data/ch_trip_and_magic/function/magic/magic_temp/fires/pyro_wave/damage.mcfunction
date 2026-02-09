execute if score @s ch_tm_entity_id = @n[tag=ch_tm_pyro_wave] ch_tm_entity_id run return fail
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_pyro_wave] ch_tm_entity_id at @s run tag @s add ch_tm_pyro_owner
damage @s 0.5 ch_trip_and_magic:magic/fire_lv3 by @n[tag=ch_tm_pyro_owner]