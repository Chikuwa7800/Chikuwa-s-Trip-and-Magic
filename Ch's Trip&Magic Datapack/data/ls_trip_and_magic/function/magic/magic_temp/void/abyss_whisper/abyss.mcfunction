execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ls_tm_abyss_display] ch_tm_entity_id run tag @s add ch_tm_aw_attacker

particle soul_fire_flame ^ ^ ^-0.5 0 0 0 0. 5 force
particle dragon_breath ^ ^ ^-0.5 0.3 0.3 0.3 0.1 10 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound entity.ender_eye.death player @a ~ ~ ~ 2 1
playsound entity.ender_eye.launch player @a ~ ~ ~ 1 1
playsound block.sculk_sensor.clicking_stop player @a ~ ~ ~ 2 0.5
playsound entity.enderman.teleport player @a ~ ~ ~ 1 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_abyss_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/void/abyss_whisper/damage

tag @n[tag=ch_tm_aw_attacker] remove ch_tm_aw_attacker

function ls_trip_and_magic:magic/magic_temp/hit

kill @n[type=area_effect_cloud]
kill @s
