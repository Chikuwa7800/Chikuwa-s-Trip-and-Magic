tag @s remove ch_tm_magic_flame_tick
tag @s remove ch_tm_magic_frost_tick
tag @s remove ch_tm_magic_abyss_tick
tag @s remove ch_tm_magic_erosion_tick
tag @s remove ch_tm_magic_electro_tick
tag @s remove ch_tm_magic_cut_tick
tag @s remove ch_tm_magic_wet_tick

scoreboard players set @s ch_tm_magic_flame_tick 0
scoreboard players set @s ch_tm_magic_frost_tick 0
scoreboard players set @s ch_tm_magic_abyss_tick 0
scoreboard players set @s ch_tm_magic_erosion_tick 0
scoreboard players set @s ch_tm_magic_electro_tick 0
scoreboard players set @s ch_tm_magic_cut_tick 0
scoreboard players set @s ch_tm_magic_wet_tick 0

execute if entity @s[tag=ls_magic_lightning_sword_pl] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/reset_in_first
execute if entity @s[tag=ch_tm_pyro_pl] run function ch_trip_and_magic:magic/magic_temp/fires/pyro_wave/reset
execute if entity @s[tag=ch_tm_bolea_pl] run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/reset
execute if entity @s[tag=ch_tm_gust_pl] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/reset
execute if entity @s[tag=ch_tm_vel_tulnna] run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/reset

scoreboard players reset @s ls_trip_magic_death