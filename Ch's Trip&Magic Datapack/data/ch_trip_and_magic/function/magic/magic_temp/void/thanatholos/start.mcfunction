tag @s add ch_tm_thantholos_pl
execute anchored eyes positioned ^ ^ ^1.5 run particle sweep_attack ~ ~-0.5 ~ 0 0 0 1 1
execute anchored eyes positioned ^ ^ ^1.5 run particle dust{color:[0.157,0.000,0.278],scale:1} ~ ~-0.5 ~ 1.5 0 1.5 1 50
playsound trip_magic:magic.void.thanatholos player @a ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function ch_effect_temp:vfx/thanatholos/play
execute summon marker run function ch_trip_and_magic:magic/magic_temp/void/thanatholos/cal_init
execute positioned ^ ^ ^1.5 positioned ~-3 ~-3 ~-3 as @e[tag=!ch_tm_thantholos_pl,dx=3,dy=3,dz=3,type=!#ch_trip_and_magic:cannot_hurt_entities] run function ch_trip_and_magic:magic/magic_temp/void/thanatholos/damage with entity @n[tag=ch_tm_thanatholos_marker] data
tag @s remove ch_tm_thantholos_pl
