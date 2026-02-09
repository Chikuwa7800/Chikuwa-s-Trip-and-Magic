execute as @e[tag=!ch_tm_trip_mobs_warrior_husk,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..1] at @s run damage @s 5 mob_attack by @n[tag=ch_tm_trip_mobs_warrior_husk]
execute rotated ~ 0 run particle explosion ~ ~ ~ 0 0 0 0 1 force
playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 0.75