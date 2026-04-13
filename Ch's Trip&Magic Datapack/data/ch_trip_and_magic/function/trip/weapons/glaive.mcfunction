tag @s add ch_tm_used_glaive
execute positioned ^ ^ ^2.5 positioned ~-2 ~ ~-2 as @e[tag=!ch_tm_used_glaive,dx=2,dz=2,type=!#ch_trip_and_magic:cannot_hurt_entities] positioned ~2 ~ ~2 positioned ^ ^ ^-2.5 run function ch_trip_and_magic:trip/weapons/glaive_damage
execute anchored eyes positioned ^ ^ ^1.5 run particle sweep_attack ~ ~-0.5 ~ 0 0 0 1 1
playsound entity.player.attack.sweep player @a ~ ~1 ~ 1 0.5
tag @s remove ch_tm_used_glaive
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/glaive