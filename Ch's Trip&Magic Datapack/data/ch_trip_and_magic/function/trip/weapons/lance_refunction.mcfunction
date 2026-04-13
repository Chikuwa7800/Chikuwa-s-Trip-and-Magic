execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=0,dy=0,dz=0,tag=!ch_tm_used_lance] positioned ~0.25 ~0.25 ~0.25 positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0,dy=0,dz=0] positioned ~0.75 ~0.75 ~0.75 run damage @s 1 player_attack by @p[tag=ch_tm_used_lance]
particle crit ~ ~ ~ 0.125 0.125 0.125 0. 1 force
execute positioned ^ ^ ^0.245 if entity @s[distance=..4.5] run function ch_trip_and_magic:trip/weapons/lance_refunction
execute positioned ^ ^ ^0.245 if entity @s[distance=..4.5] run tag @s remove ch_tm_used_lance
