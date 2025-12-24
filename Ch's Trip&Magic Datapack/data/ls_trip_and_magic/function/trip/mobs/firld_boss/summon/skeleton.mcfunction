##ls_tm_trip_mobs_nomal
tag @s add ls_tm_trip_firld_boss

tag @s add ls_tm_trip_mobs
execute if entity @s[predicate=ls_trip_and_magic:trip/mobs/passenger] run return fail

execute store result score @s ls_tm_random run random value 0..100

execute if entity @s[scores={ls_tm_random=0..49}] run return fail

execute if entity @s[scores={ls_tm_random=50..59}] run function ls_trip_and_magic:trip/mobs/firld_boss/summon/init/magic_skeleton

execute if entity @s[scores={ls_tm_random=60..80}] run function ls_trip_and_magic:trip/mobs/firld_boss/summon/init/lanceman_skeleton

execute if entity @s[scores={ls_tm_random=81..99}] run function ls_trip_and_magic:trip/mobs/firld_boss/summon/init/bone_clusher

execute if entity @s[scores={ls_tm_random=100}] run function ls_trip_and_magic:trip/mobs/firld_boss/summon/init/skeleton_horse_trap
