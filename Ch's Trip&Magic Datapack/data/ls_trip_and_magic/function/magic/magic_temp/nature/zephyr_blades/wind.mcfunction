particle cloud ^ ^ ^-0.5 0 0 0 0. 5 force
particle poof ^ ^ ^-0.5 0 0 0 0.1 5 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1
playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 2 0.25
playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 2 0.75
playsound entity.breeze.shoot player @a ~ ~ ~ 2 0.75

tag @s[tag=ls_wind_lecavary_1,tag=!ls_wind_lecavary_unable] add ls_wind_lecavary_2

tag @s[tag=!ls_wind_lecavary_1] add ls_wind_lecavary_unable
tag @s[tag=!ls_wind_lecavary_1] add ls_wind_lecavary_1

execute if entity @s[tag=ls_wind_lecavary_2,tag=!ls_wind_lecavary_unable] run kill @n[type=area_effect_cloud]
kill @s[tag=ls_wind_lecavary_2,tag=!ls_wind_lecavary_unable]

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,tag=!ls_tm_zepher_pl,tag=ls_tm_using_shield] positioned ~0.5 ~0.5 ~0.5 run kill @n[type=area_effect_cloud]
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0,tag=!ls_tm_zepher_pl,tag=ls_tm_using_shield] positioned ~0.5 ~0.5 ~0.5 run kill @s