tag @s add ch_tm_trip_firld_boss_husk_hammer_success
tag @s add ch_tm_trip_firld_boss_husk_hammer_success_line
execute positioned ^ ^ ^1.5 as @e[tag=!ch_tm_trip_mobs_warrior_husk,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..1.5] at @s run damage @s 5 mob_attack by @n[tag=ch_tm_trip_mobs_warrior_husk]
execute rotated ~ 0 run particle explosion ^ ^ ^1 0 0 0 0 1 force
playsound entity.zombie.attack_iron_door hostile @a ~ ~ ~ 2 1
playsound entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 2 0.75