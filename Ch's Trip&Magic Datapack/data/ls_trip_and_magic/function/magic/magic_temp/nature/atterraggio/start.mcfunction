tag @s add ls_tm_magic_pl
tag @s add ls_tm_magic_atte_cooldown

execute rotated ~ 0 positioned ^ ^ ^3 run playsound block.gravel.break player @a ~ ~ ~ 2 1
execute rotated ~ 0 positioned ^ ^ ^3 run playsound item.mace.smash_ground player @a ~ ~ ~ 2 1
execute rotated ~ 0 positioned ^ ^ ^3 run playsound item.mace.smash_ground_heavy player @a ~ ~ ~ 2 1
execute rotated ~ 0 positioned ^ ^ ^3 run particle dust_pillar{block_state:dirt} ~ ~ ~ 3 0 3 1 500
execute rotated ~ 0 positioned ^ ^ ^3 run particle dust_pillar{block_state:dirt} ~ ~ ~ 3 0 3 1 500
execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=2,dz=6,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_magic_pl] run damage @s 7 ls_trip_and_magic:magic/nature_lv2 by @p[tag=ls_tm_magic_pl]
execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=2,dz=6,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_magic_pl,tag=!ls_tm_using_shield] run data merge entity @s {Motion:[0.0,1.0,0.0]}
execute rotated ~ 0 positioned ^ ^ ^3 positioned ~-3 ~-1 ~-3 as @e[dx=6,dy=2,dz=6,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_magic_pl,tag=!ls_tm_using_shield] at @s run function ls_trip_and_magic:magic/effect/erosion/start {"time":"8"}

tag @s remove ls_tm_magic_pl