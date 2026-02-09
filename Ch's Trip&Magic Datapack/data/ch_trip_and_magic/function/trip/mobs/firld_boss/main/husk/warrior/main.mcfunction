execute if entity @e[distance=..20,predicate=ch_trip_and_magic:trip/mobs/target] run scoreboard players add @s ls_trip_boss_tick 1

execute if entity @s[scores={ls_trip_boss_tick=80}] if entity @n[predicate=ch_trip_and_magic:trip/mobs/target,distance=..6] run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_ex

execute if entity @s[scores={ls_trip_boss_tick=90},tag=ch_tm_trip_firld_boss_husk_hammer_ex] run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_ex1

execute if entity @s[scores={ls_trip_boss_tick=100},tag=ch_tm_trip_firld_boss_husk_hammer_ex] run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_start
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=!ch_tm_trip_firld_boss_husk_hammer_success] if predicate ch_trip_and_magic:acshident/location_check/on_ground run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_ground

execute if entity @s[scores={ls_trip_boss_tick_ex=..10},tag=ch_tm_trip_firld_boss_husk_hammer_success_line] run scoreboard players add @s ls_trip_boss_tick_ex 1
execute if entity @s[scores={ls_trip_boss_tick_ex=5},tag=ch_tm_trip_firld_boss_husk_hammer_success_line] positioned ^ ^ ^2.5 run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_line
execute if entity @s[scores={ls_trip_boss_tick_ex=10},tag=ch_tm_trip_firld_boss_husk_hammer_success_line] positioned ^ ^ ^3.5 run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/hammer_line
execute if entity @s[scores={ls_trip_boss_tick_ex=11..},tag=ch_tm_trip_firld_boss_husk_hammer_success_line] run tag @s remove ch_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick=300..},tag=ch_tm_trip_firld_boss_husk_hammer_success_line] run tag @s remove ch_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick_ex=11..},tag=ch_tm_trip_firld_boss_husk_hammer_success_line] run scoreboard players set @s ls_trip_boss_tick_ex 0

execute if entity @s[scores={ls_trip_boss_tick=130},tag=ch_tm_trip_firld_boss_husk_hammer] run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/end_hummer

execute if entity @s[scores={ls_trip_boss_tick=190}] if entity @n[predicate=ch_trip_and_magic:trip/mobs/target,distance=..6] run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/bash

execute if entity @s[scores={ls_trip_boss_tick=210},tag=ch_tm_trip_firld_boss_husk_bash_ex] run function ch_trip_and_magic:trip/weapons/bash_shield
execute if entity @s[scores={ls_trip_boss_tick=210},tag=ch_tm_trip_firld_boss_husk_bash_ex] run tag @s remove ch_tm_trip_firld_boss_husk_bash_ex

scoreboard players set @s[scores={ls_trip_boss_tick=290..}] ls_trip_boss_tick 0