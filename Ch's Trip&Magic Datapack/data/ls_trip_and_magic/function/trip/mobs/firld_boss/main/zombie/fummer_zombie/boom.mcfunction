particle crit ~ ~0.1 ~ 2.5 0 2.5 0 20 force
playsound entity.generic.explode hostile @a ~ ~ ~ 1 0.5
execute positioned ~-2.5 ~-0.25 ~-2.5 as @e[dx=5,dz=5,tag=!ls_tm_trip_mobs_famer_zombie,type=!#ls_trip_and_magic:cannot_hurt_entities] at @s run damage @s 5 mob_attack by @n[tag=ls_tm_trip_firld_boss_zombie_jump]
tag @s remove ls_tm_trip_firld_boss_zombie_jump
tag @s remove ls_tm_trip_firld_boss_zombie_jump_ex
scoreboard players set @s ls_trip_boss_tick_ex 0