##ch_tm_trip_mobs_nomal

tag @s add ch_tm_trip_firld_boss

tag @s add ch_tm_trip_mobs
execute if entity @s[predicate=ch_trip_and_magic:trip/mobs/passenger] run return fail

execute store result score @s ch_tm_random run random value 0..100
execute if entity @s[scores={ch_tm_random=0..49}] run return fail

execute if entity @s[scores={ch_tm_random=50..59}] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/init/magic_stray

execute if entity @s[scores={ch_tm_random=60..100}] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/init/assassin_stray
