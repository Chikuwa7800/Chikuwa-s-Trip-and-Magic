scoreboard players add @s ch_tm_magic_adure_count_tick 1
attribute @s attack_damage modifier add temp 2 add_multiplied_total
execute if score @s ch_tm_magic_adure_count_tick matches 100.. run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/end