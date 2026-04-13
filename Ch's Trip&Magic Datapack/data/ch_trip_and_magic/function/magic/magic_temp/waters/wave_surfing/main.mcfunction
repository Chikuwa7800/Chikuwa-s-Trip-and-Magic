execute rotated ~ 0 run tp ^ ^ ^1
execute unless block ~ ~ ~ #ch_trip_and_magic:no_collision run tp ~ ~1 ~
execute if block ~ ~ ~ #ch_trip_and_magic:no_collision if block ~ ~-1 ~ #ch_trip_and_magic:no_collision run tp ~ ~-1 ~

particle block{block_state:water} ~ ~ ~ 0 0 0 0 5 force
particle dust{color:[0.118,0.153,0.635],scale:2} ~ ~ ~ 0.5 0.5 0.5 0.2 10 force
particle splash ~ ~ ~ 0.5 0.5 0.5 0.2 10 force
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!ch_tm_wave_surfing_pl,type=!#ch_trip_and_magic:cannot_hurt_entities] at @s run damage @s 7 ch_trip_and_magic:magic/waters_lv2 by @p[tag=ch_tm_wave_surfing_pl]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=!ch_tm_wave_surfing_pl,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_using_shield] at @s run function ch_trip_and_magic:magic/effect/wet/start {"time":"10"}
execute if entity @s[scores={ch_tm_wave_surfing_tick=1..}] run scoreboard players remove @s ch_tm_wave_surfing_tick 1
tag @a[scores={ch_tm_wave_surfing_tick=..0}] remove ch_tm_wave_surfing_pl

