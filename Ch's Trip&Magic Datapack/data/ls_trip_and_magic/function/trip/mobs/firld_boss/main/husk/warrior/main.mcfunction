execute if entity @e[distance=..20,predicate=ls_trip_and_magic:trip/mobs/target] run scoreboard players add @s ls_trip_boss_tick 1

execute if entity @s[scores={ls_trip_boss_tick=80}] if entity @n[predicate=ls_trip_and_magic:trip/mobs/target,distance=..6] run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_ex

execute if entity @s[scores={ls_trip_boss_tick=90},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_ex1

execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_start
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer,tag=!ls_tm_trip_firld_boss_husk_hammer_success_line] unless block ~ ~-0.01 ~ #ls_trip_and_magic:no_collision run tag @s add ls_tm_trip_firld_boss_husk_hammer_success
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer] unless block ~ ~-0.01 ~ #ls_trip_and_magic:no_collision run tag @s add ls_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer_success] run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_ground

execute if entity @s[scores={ls_trip_boss_tick_ex=..10},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run scoreboard players add @s ls_trip_boss_tick_ex 1
execute if entity @s[scores={ls_trip_boss_tick_ex=5},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] positioned ^ ^ ^2.5 run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_line
execute if entity @s[scores={ls_trip_boss_tick_ex=10},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] positioned ^ ^ ^3.5 run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_line
execute if entity @s[scores={ls_trip_boss_tick_ex=11..},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run tag @s remove ls_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick=300..},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run tag @s remove ls_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick_ex=11..},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run scoreboard players set @s ls_trip_boss_tick_ex 0

execute if entity @s[scores={ls_trip_boss_tick=130},tag=ls_tm_trip_firld_boss_husk_hammer] run tag @s remove ls_tm_trip_firld_boss_husk_hammer

execute if entity @s[scores={ls_trip_boss_tick=190}] if entity @n[predicate=ls_trip_and_magic:trip/mobs/target,distance=..6] run function ls_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/bash

execute if entity @s[scores={ls_trip_boss_tick=230},tag=ls_tm_trip_firld_boss_husk_bash_ex] run function ls_trip_and_magic:trip/weapons/bash_shield
execute if entity @s[scores={ls_trip_boss_tick=230},tag=ls_tm_trip_firld_boss_husk_bash_ex] run tag @s remove ls_tm_trip_firld_boss_husk_bash_ex

scoreboard players set @s[scores={ls_trip_boss_tick=300..}] ls_trip_boss_tick 0