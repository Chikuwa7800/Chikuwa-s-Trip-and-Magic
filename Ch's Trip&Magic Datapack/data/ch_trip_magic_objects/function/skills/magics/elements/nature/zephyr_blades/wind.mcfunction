particle cloud ^ ^ ^-0.5 0 0 0 0. 5 force
particle poof ^ ^ ^-0.5 0 0 0 0.1 5 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
playsound item.trident.riptide_3 player @a ~ ~ ~ 1 1

execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ls_tm_zepher_pl,type=#ls_trip_and_magic:mobs_and_player_and_collision_entity,tag=!ls_tm_wind_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/damage with entity @n[tag=ls_tm_magic_pl]


tag @s[tag=ls_wind_lecavary_1,tag=!ls_wind_lecavary_unable] add ls_wind_lecavary_2

tag @s[tag=!ls_wind_lecavary_1] add ls_wind_lecavary_unable
tag @s[tag=!ls_wind_lecavary_1] add ls_wind_lecavary_1

execute if entity @s[tag=ls_wind_lecavary_2,tag=!ls_wind_lecavary_unable] run kill @n[type=area_effect_cloud]
kill @s[tag=ls_wind_lecavary_2,tag=!ls_wind_lecavary_unable]

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,tag=!ls_tm_zepher_pl,tag=ls_tm_using_shield] positioned ~0.5 ~0.5 ~0.5 run kill @n[type=area_effect_cloud]
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,tag=!ls_tm_zepher_pl,tag=ls_tm_using_shield] positioned ~0.5 ~0.5 ~0.5 run kill @s