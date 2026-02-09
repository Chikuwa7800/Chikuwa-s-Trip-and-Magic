##ch_tm_iceyball_display
scoreboard players add @s ch_tm_tick 1
particle snowflake ~ ~ ~ 0.1 0.1 0.1 0. 3 force
particle dust{color:[0.863,0.969,0.973],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.5 20

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_iceyball_display] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/hit
execute if entity @s[scores={ch_tm_tick=300..}] run function ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/ice
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/ice

execute if block ^ ^ ^ water run function ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/ice

tp @s ^ ^ ^0.5