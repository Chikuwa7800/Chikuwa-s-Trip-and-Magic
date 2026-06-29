tag @s remove ch_tm_adure_pl
tag @s remove ch_tm_adure_counter
scoreboard players reset @s ch_tm_magic_adure_tick
scoreboard players reset @s ch_tm_magic_adure_count_tick
particle large_smoke ~ ~ ~ 0.0 0.0 0.0 0.1 20
execute anchored eyes run particle warped_spore ^ ^ ^ 0.125 0.125 0.125 0.05 20
attribute @s attack_damage modifier remove ch_trip_and_magic:double_damage