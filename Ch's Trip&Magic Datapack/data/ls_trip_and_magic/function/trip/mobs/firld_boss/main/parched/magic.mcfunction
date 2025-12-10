execute positioned ~ ~2 ~ if entity @n[type=arrow,distance=..3] run function ls_trip_and_magic:trip/mobs/firld_boss/main/parched/trigger with entity @s

scoreboard players add @s[tag=ls_tm_trip_mobs_magic_parched_prep_cast] ls_trip_boss_tick 1

execute if entity @s[scores={ls_trip_boss_tick=1}] run playsound block.enchantment_table.use hostile @a ~ ~ ~ 4 2
execute if entity @s[scores={ls_trip_boss_tick=1}] run particle witch ~ ~0.1 ~ 0.1 0.1 0.1 0.25 20 force
execute if entity @s[tag=ls_tm_trip_mobs_magic_parched_prep_cast] run particle witch ~ ~0.1 ~ 0.1 0.1 0.1 0. 1 force

execute if entity @s[scores={ls_trip_boss_tick=21}] run function ls_trip_and_magic:magic/magic_temp/fires/blaze_flare/summon with entity @s

tag @s[scores={ls_trip_boss_tick=21..}] remove ls_tm_trip_mobs_magic_parched_prep_cast
scoreboard players set @s[scores={ls_trip_boss_tick=21..}] ls_trip_boss_tick 0