particle cloud ^ ^ ^-0.5 0 0 0 0. 5 force
particle poof ^ ^ ^-0.5 0 0 0 0.1 5 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 1
playsound entity.skeleton.converted_to_stray player @a ~ ~ ~ 1 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_iceyball_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/ices/frost_bullet/damage with entity @n[tag=ls_tm_magic_pl]

execute if block ~ ~ ~ water run playsound entity.player.hurt_freeze block @a ~ ~ ~ 1 1
execute if block ~ ~ ~ water run setblock ~ ~-0.25 ~ frosted_ice

function ls_trip_and_magic:magic/magic_temp/hit

kill @n[type=area_effect_cloud]
kill @s

