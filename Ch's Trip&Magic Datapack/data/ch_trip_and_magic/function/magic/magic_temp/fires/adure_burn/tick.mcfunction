scoreboard players add @s ch_tm_magic_adure_tick 1
execute if predicate ch_trip_and_magic:magic/counter_hurt run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/count_charged
execute if score @s ch_tm_magic_adure_tick matches 100.. run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/end