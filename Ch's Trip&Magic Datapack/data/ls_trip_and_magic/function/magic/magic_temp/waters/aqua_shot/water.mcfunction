execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ls_tm_waterball_display] ch_tm_entity_id run tag @s add ch_tm_as_attacker

particle splash ^ ^ ^-0.5 0.2 0.2 0.2 0.5 50 force
particle dust{color:[0.118,0.153,0.635],scale:2} ^ ^ ^-0.5 0.3 0.3 0.3 0.1 20 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound item.bucket.fill player @a ~ ~ ~ 1 1
playsound entity.elder_guardian.hurt player @a ~ ~ ~ 1 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_waterball_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/damage

tag @n[tag=ch_tm_as_attacker] remove ch_tm_as_attacker

function ls_trip_and_magic:magic/magic_temp/hit

kill @n[type=area_effect_cloud]
kill @s
