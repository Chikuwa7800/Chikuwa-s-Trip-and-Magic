particle end_rod ^ ^ ^-0.5 0.5 0.5 0.5 0. 15 force
particle enchanted_hit ^ ^ ^-0.5 0 0 0 0.1 5 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force
particle dust{color:[0.933,1.000,0.012],scale:2} ^ ^ ^-0.5 0.5 0.5 0.5 0.5 50
particle electric_spark ^ ^ ^-0.5 0 0 0 0.2 1 force

playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1
playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 1 2

#execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_volt_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/bolts/volt_strike/damage

#execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_volt_display,predicate=ls_trip_and_magic:trip/mobs/nomal/75] at @s positioned ^ ^ ^4 run function ls_trip_and_magic:magic/magic_temp/bolts/volt_strike/summon

function ls_trip_and_magic:magic/magic_temp/hit



kill @n[type=area_effect_cloud]
kill @s
kill @s