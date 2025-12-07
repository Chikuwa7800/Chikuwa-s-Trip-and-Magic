tag @s add ls_tm_magic_ts_pl
tag @s add ls_tm_magic_screen_cooldown
playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 2 1.5
playsound entity.firework_rocket.blast player @a ~ ~ ~ 2 1
particle electric_spark ~ ~ ~ 5 5 5 0 200 force
particle flash{color:[1.0,1.0,1.0,1]} ~ ~ ~ 0 0 0 1 1 force
effect give @e[distance=..5,tag=!ls_tm_magic_ts_pl,tag=!ls_tm_using_shield] slowness 2 1
title @s times 0t 1t 4t
title @s title {"font":"trip_magic:vfx/others","text":"\uE000",color:"white"}
title @a[distance=..5,tag=!ls_tm_magic_ts_pl] times 0t 10t 5t
title @a[distance=..5,tag=!ls_tm_magic_ts_pl] title {"font":"trip_magic:vfx/others","text":"\uE000",color:"white"}
execute as @e[distance=..5,tag=!ls_tm_magic_ts_pl] at @s run damage @s 5 ls_trip_and_magic:magic/bolts_lv2 by @e[tag=ls_tm_magic_ts_pl,limit=1,sort=nearest]
tag @s remove ls_tm_magic_ts_pl