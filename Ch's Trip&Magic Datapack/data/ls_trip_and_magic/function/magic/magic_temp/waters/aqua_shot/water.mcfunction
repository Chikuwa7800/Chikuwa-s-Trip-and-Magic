particle splash ^ ^ ^-0.5 0.2 0.2 0.2 0.5 50 force
particle dust{color:[0.118,0.153,0.635],scale:2} ^ ^ ^-0.5 0.3 0.3 0.3 0.1 20 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound item.bucket.fill player @a ~ ~ ~ 1 1
playsound entity.elder_guardian.hurt player @a ~ ~ ~ 1 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=#ls_trip_and_magic:mobs_and_player_and_collision_entity,tag=!ls_tm_waterball_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/damage with entity @n[tag=ls_tm_magic_pl]

function ls_trip_and_magic:magic/magic_temp/hit

kill @n[type=area_effect_cloud]
kill @s
