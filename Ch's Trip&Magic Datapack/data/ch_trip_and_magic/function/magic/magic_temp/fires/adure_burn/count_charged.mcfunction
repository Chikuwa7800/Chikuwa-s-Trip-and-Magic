advancement revoke @s only ch_trip_and_magic:magic/counter_player_hurted
execute if entity @s[tag=!ch_tm_adure_pl] run return fail
scoreboard players reset @s ch_tm_magic_adure_tick
tag @s add ch_tm_adure_counter
attribute @s attack_damage modifier add ch_trip_and_magic:double_damage 2 add_multiplied_total
particle trial_spawner_detection ~ ~ ~ 0.25 0.5 0.25 0 20 force
particle flame ~ ~ ~ 0.25 0.5 0.25 0 10 force