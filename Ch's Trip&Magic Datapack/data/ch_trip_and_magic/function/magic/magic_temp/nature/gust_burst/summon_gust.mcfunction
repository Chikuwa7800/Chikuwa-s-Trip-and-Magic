$summon breeze_wind_charge ~ ~ ~ {Tags:["ch_tm_gust_burster","ch_tm.magic_entity"],Owner:$(UUID)}
summon marker ~ ~ ~ {Tags:["ch_motion_marker"]}
execute anchored feet run particle cloud ^ ^ ^0.01 0.25 0.25 0.25 0.01 10 force
execute anchored eyes run tp @n[tag=ch_tm_gust_burster] ^ ^ ^0.1 ~ ~
execute anchored eyes run tp @n[tag=ch_motion_marker] ^ ^ ^0.1 ~ ~
execute as @n[tag=ch_tm_gust_burster,tag=!ch_tm_motion_applyed] at @s rotated as @n[tag=ch_tm_gust_pl] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/gust_motion
