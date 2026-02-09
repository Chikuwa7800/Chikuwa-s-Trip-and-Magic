execute as @e[tag=ch_tm_wave_surfing_pl] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=ch_tm_wave_surfing_pl] at @s unless block ~ ~ ~ #ch_trip_and_magic:no_collision run tp ~ ~1 ~
execute as @e[tag=ch_tm_wave_surfing_pl] at @s unless block ~ ~1 ~ #ch_trip_and_magic:no_collision run tp ~ ~1 ~
execute as @e[tag=ch_tm_wave_surfing_pl] at @s unless block ~ ~-0.5 ~ #ch_trip_and_magic:no_collision run tp ~ ~-0.5 ~
execute as @e[tag=ch_tm_wave_surfing_pl] at @s run tp ^ ^ ^1
execute as @e[tag=ch_tm_wave_surfing_pl] at @s run particle block{block_state:water} ~ ~ ~ 0 0 0 0 5 force
execute as @e[tag=ch_tm_wave_surfing_pl] at @s run particle dust{color:[0.118,0.153,0.635],scale:2} ~ ~ ~ 0.5 0.5 0.5 0.2 25 force
execute as @e[tag=ch_tm_wave_surfing_pl] at @s run particle splash ~ ~ ~ 0.5 0.5 0.5 0.2 25 force
execute as @e[tag=ch_tm_wave_surfing_pl] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!ch_tm_wave_surfing_pl,type=!#ch_trip_and_magic:cannot_hurt_entities] at @s run damage @s 7 magic by @p[tag=ch_tm_wave_surfing_pl]
execute as @e[tag=ch_tm_wave_surfing_pl] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!ch_tm_wave_surfing_pl,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_using_shield] at @s run function ch_trip_and_magic:magic/effect/wet/start {"time":"10"}
execute as @e[tag=ch_tm_wave_surfing_pl] at @s if entity @s[scores={ch_tm_wave_surfing_tick=1..}] run scoreboard players remove @s ch_tm_wave_surfing_tick 1
execute as @e[tag=ch_tm_wave_surfing_pl] at @s if entity @s[scores={ch_tm_wave_surfing_tick=1..}] run schedule function ch_trip_and_magic:magic/magic_temp/waters/wave_surfing/main 0.5t
tag @a[scores={ch_tm_wave_surfing_tick=..0}] remove ch_tm_wave_surfing_pl
