tag @s add ch_tm_magic_pl

execute rotated ~ 0 positioned ^ ^ ^3 run playsound trip_magic:magic.nature.wood_bind player @a ~ ~ ~ 2 1
execute rotated ~ 0 positioned ^ ^ ^3 run playsound trip_magic:magic.nature.atter_ragio player @a ~ ~ ~ 2 1
execute rotated ~ 0 positioned ^ ^ ^3 run particle dust_pillar{block_state:dirt} ~ ~ ~ 1.5 0 1.5 1 500
execute rotated ~ 0 positioned ^ ^ ^3 run particle dust_pillar{block_state:dirt} ~ ~ ~ 3 0 3 0.25 500
execute rotated ~ 0 positioned ^ ^ ^3 run function ch_effect_temp:vfx/vertical_shock/play
execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=2,dz=6,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_magic_pl] run damage @s 7 ch_trip_and_magic:magic/nature_lv2 by @p[tag=ch_tm_magic_pl]
execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=2,dz=6,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_magic_pl,tag=!ch_tm_using_shield] run data merge entity @s {Motion:[0.0,1.0,0.0]}
execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=2,dz=6,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_magic_pl,tag=!ch_tm_using_shield] at @s run function ch_trip_and_magic:magic/effect/erosion/start {"time":"8"}

tag @s remove ch_tm_magic_pl