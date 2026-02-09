execute positioned ~-0.5 ~-0.5 ~-0.5 positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=0,tag=!ch_tm_used_spear] positioned ~0.5 ~0.5 ~0.5 run damage @s[dx=0] 1 player_attack by @p[tag=ch_tm_used_spear]
particle crit ~ ~ ~ 0.125 0.125 0.125 0. 1 force
execute positioned ^ ^ ^0.245 if entity @s[distance=..4.5] run function ch_trip_and_magic:trip/weapons/spear_refunction
execute positioned ^ ^ ^0.245 if entity @s[distance=..4.5] run tag @p[tag=ch_tm_used_spear] remove ch_tm_used_spear