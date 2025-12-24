execute if entity @e[distance=..20,predicate=ls_trip_and_magic:trip/mobs/target] run scoreboard players add @s ls_trip_boss_tick 1

#data merge entity @s[tag=ls_tm_trip_firld_boss_zombie_jump] {Motion:[0.0,1.0,0.0]}

#execute if entity @s[scores={ls_trip_boss_tick=60}] run tag @s add ls_tm_trip_firld_boss_zombie_jump

execute if entity @s[scores={ls_trip_boss_tick=80},tag=!ls_tm_trip_firld_boss_zombie_power_up] if entity @n[predicate=ls_trip_and_magic:trip/mobs/target,distance=..4] run tag @s add ls_tm_trip_firld_boss_zombie_jump_ex
execute if entity @s[scores={ls_trip_boss_tick=80},tag=!ls_tm_trip_firld_boss_zombie_jump_ex] if entity @n[predicate=ls_trip_and_magic:trip/mobs/target,distance=..50] run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/power_up

scoreboard players add @s[tag=ls_tm_trip_firld_boss_zombie_jump_ex] ls_trip_boss_tick_ex 1

execute if entity @s[scores={ls_trip_boss_tick_ex=2},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/jump_ex
execute if entity @s[scores={ls_trip_boss_tick_ex=7},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/jump_ex
execute if entity @s[scores={ls_trip_boss_tick_ex=12},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/jump_ex
execute if entity @s[scores={ls_trip_boss_tick_ex=17},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/jump_ex

execute if entity @s[scores={ls_trip_boss_tick_ex=22},tag=ls_tm_trip_firld_boss_zombie_jump_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/jump

execute if entity @s[scores={ls_trip_boss_tick_ex=22..60},tag=ls_tm_trip_firld_boss_zombie_jump] unless block ~ ~-0.25 ~ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/boom

execute if entity @s[scores={ls_trip_boss_tick=110..130},tag=ls_tm_trip_firld_boss_zombie_power_up] run tag @s remove ls_tm_trip_firld_boss_zombie_power_up

execute if entity @s[scores={ls_trip_boss_tick=200}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=200..210}] run particle totem_of_undying ~ ~ ~ 0 0 0 0.5 10 force
execute if entity @s[scores={ls_trip_boss_tick=200}] run effect give @s instant_damage 1 0 true

scoreboard players set @s[scores={ls_trip_boss_tick=260..}] ls_trip_boss_tick 0
