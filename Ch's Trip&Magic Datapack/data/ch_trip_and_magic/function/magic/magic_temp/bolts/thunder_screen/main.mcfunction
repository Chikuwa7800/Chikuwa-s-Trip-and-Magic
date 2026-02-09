tag @s add ch_tm_magic_ts_pl
execute as @e[distance=..5,tag=!ch_tm_magic_ts_pl,type=!#ch_trip_and_magic:cannot_hurt_entities] at @s run damage @s 10 ch_trip_and_magic:magic/bolts_lv2 by @n[tag=ch_tm_magic_ts_pl]
execute as @e[distance=..5,tag=!ch_tm_magic_ts_pl,tag=!ch_tm_using_shield,type=!#ch_trip_and_magic:cannot_hurt_entities] at @s run function ch_trip_and_magic:magic/effect/electro/start {"time":"8"}
function ch_effect_temp:vfx/electro_flash/play
playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1.5
playsound entity.firework_rocket.blast player @a ~ ~ ~ 2 1
particle electric_spark ~ ~ ~ 5 5 5 0 200 force
particle flash{color:[1.0,1.0,1.0,1]} ~ ~ ~ 0 0 0 1 1 force
effect give @e[distance=..5,tag=!ch_tm_magic_ts_pl,tag=!ch_tm_using_shield] slowness 1 2
title @s times 0t 1t 4t
title @s title {"font":"trip_magic:vfx/others","text":"\uE000",color:"white"}
title @a[distance=..5,tag=!ch_tm_magic_ts_pl] times 0t 10t 5t
title @a[distance=..5,tag=!ch_tm_magic_ts_pl] title {"font":"trip_magic:vfx/others","text":"\uE000",color:"white"}
tag @s remove ch_tm_magic_ts_pl