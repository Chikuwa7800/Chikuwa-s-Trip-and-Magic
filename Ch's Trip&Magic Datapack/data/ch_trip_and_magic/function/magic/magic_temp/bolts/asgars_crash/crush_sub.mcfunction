function ch_effect_temp:vfx/lightning_crush/play
playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1
playsound block.trial_spawner.spawn_item player @a ~ ~ ~ 1 2
particle flash{color:-1114285} ~ ~ ~ 0.0 0.0 0.0 0 1 force
particle electric_spark ~ ~ ~ 0.25 0.25 0.25 0 15 force
particle dust{color:15662931,scale:0.5} ~ ~ ~ 0.5 0.5 0.5 0 15

execute as @e[tag=ch.has.entity_id] if score @n[tag=ch_tm_asgars_core] ch_tm_entity_id = @s ch_tm_entity_id run tag @s add ch_tm_ac_attacker
execute positioned ~-1 ~-1 ~-1 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=1,dy=1,dz=1] unless score @n[tag=ch_tm_asgars_core] ch_tm_entity_id = @s ch_tm_entity_id run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/crush_sub_damage