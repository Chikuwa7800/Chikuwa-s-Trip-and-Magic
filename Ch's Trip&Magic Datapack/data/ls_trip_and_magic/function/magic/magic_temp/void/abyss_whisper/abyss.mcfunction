particle soul_fire_flame ^ ^ ^-0.5 0 0 0 0. 5 force
particle dragon_breath ^ ^ ^-0.5 0.3 0.3 0.3 0.1 10 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound entity.ender_eye.death player @a ~ ~ ~ 2 1
playsound entity.ender_eye.launch player @a ~ ~ ~ 1 1
playsound entity.warden.attack_impact player @a ~ ~ ~ 1 1
playsound entity.enderman.teleport player @a ~ ~ ~ 1 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_abyss_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/void/abyss_whisper/damage with entity @n[tag=ls_tm_magic_pl]


function ls_trip_and_magic:magic/magic_temp/hit

kill @n[type=area_effect_cloud]
kill @s
