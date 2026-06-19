advancement revoke @s only ch_trip_and_magic:magic/countered
execute anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/count_effect_loop
tag @s remove ch_tm_adure_pl
tag @s remove ch_tm_adure_counter
attribute @s attack_damage base reset