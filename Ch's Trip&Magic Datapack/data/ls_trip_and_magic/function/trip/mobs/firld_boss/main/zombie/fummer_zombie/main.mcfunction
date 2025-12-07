execute if entity @a[distance=..20,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s ls_trip_boss_tick 1
execute if entity @e[distance=..20,predicate=ls_trip_and_magic:trip/mobs/target] run scoreboard players add @s ls_trip_boss_tick 1

#data merge entity @s[tag=ls_tm_trip_firld_boss_zombie_jump] {Motion:[0.0,1.0,0.0]}

#execute if entity @s[scores={ls_trip_boss_tick=60}] run tag @s add ls_tm_trip_firld_boss_zombie_jump

execute if entity @s[scores={ls_trip_boss_tick=80},tag=!ls_tm_trip_firld_boss_zombie_power_up] if entity @a[distance=..4] run tag @s add ls_tm_trip_firld_boss_zombie_jump_ex
execute if entity @s[scores={ls_trip_boss_tick=80},tag=!ls_tm_trip_firld_boss_zombie_jump_ex] if entity @a[distance=4.00001..] run tag @s add ls_tm_trip_firld_boss_zombie_power_up
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run playsound block.gravel.step hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_zombie_jump_ex] anchored feet run particle block{block_state:coarse_dirt} ~ ~ ~ 0.25 0 0.25 0.1 10 force

execute if entity @s[scores={ls_trip_boss_tick=85},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run playsound block.gravel.step hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=85},tag=ls_tm_trip_firld_boss_zombie_jump_ex] anchored feet run particle block{block_state:coarse_dirt} ~ ~ ~ 0.25 0 0.25 0.1 10 force

execute if entity @s[scores={ls_trip_boss_tick=90},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run playsound block.gravel.step hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=90},tag=ls_tm_trip_firld_boss_zombie_jump_ex] anchored feet run particle block{block_state:coarse_dirt} ~ ~ ~ 0.25 0 0.25 0.1 10 force

execute if entity @s[scores={ls_trip_boss_tick=95},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run playsound block.gravel.step hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=95},tag=ls_tm_trip_firld_boss_zombie_jump_ex] anchored feet run particle block{block_state:coarse_dirt} ~ ~ ~ 0.25 0 0.25 0.1 10 force

execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_zombie_power_up] run effect give @s speed 5 0
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_zombie_power_up] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_zombie_power_up] run particle end_rod ~ ~1 ~ 0.2 1 0.2 0.05 30 force

execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run tag @s add ls_tm_trip_firld_boss_zombie_jump
execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_zombie_jump] run data merge entity @s {Motion:[0.0,0.5,0.0]}
execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_zombie_jump] run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5
execute if entity @s[scores={ls_trip_boss_tick=110..130},tag=ls_tm_trip_firld_boss_zombie_jump] unless block ~ ~-0.25 ~ #ls_trip_and_magic:no_collision run execute positioned ~-2.5 ~-0.25 ~-2.5 as @e[dx=5,dz=5,tag=!ls_tm_trip_mobs_famer_zombie,type=!#ls_trip_and_magic:mobs,type=!#zombies] at @s run damage @s 5 mob_attack by @e[tag=ls_tm_trip_firld_boss_zombie_jump,limit=1,sort=nearest]
execute if entity @s[scores={ls_trip_boss_tick=110..130},tag=ls_tm_trip_firld_boss_zombie_jump] unless block ~ ~-0.25 ~ #ls_trip_and_magic:no_collision run particle crit ~ ~ ~ 2 0 2 0 100 force
execute if entity @s[scores={ls_trip_boss_tick=110..130},tag=ls_tm_trip_firld_boss_zombie_jump] unless block ~ ~-0.25 ~ #ls_trip_and_magic:no_collision run playsound entity.generic.explode hostile @a ~ ~ ~ 2 0.5
execute if entity @s[scores={ls_trip_boss_tick=110..130},tag=ls_tm_trip_firld_boss_zombie_jump] unless block ~ ~-0.25 ~ #ls_trip_and_magic:no_collision run tag @s remove ls_tm_trip_firld_boss_zombie_jump

execute if entity @s[scores={ls_trip_boss_tick=110..130},tag=ls_tm_trip_firld_boss_zombie_power_up] run tag @s remove ls_tm_trip_firld_boss_zombie_power_up

execute if entity @s[scores={ls_trip_boss_tick=190}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1

execute if entity @s[scores={ls_trip_boss_tick=200..210}] run particle totem_of_undying ~ ~ ~ 0 0 0 0.5 10 force

execute if entity @s[scores={ls_trip_boss_tick=200}] run effect give @s instant_damage 1 0 true

scoreboard players set @s[scores={ls_trip_boss_tick=260..}] ls_trip_boss_tick 0
