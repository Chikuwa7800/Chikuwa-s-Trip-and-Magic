scoreboard players add @s ch_tm_magic_adure_count_tick 1
attribute @s attack_damage modifier add ch_trip_and_magic:double_damage 2 add_multiplied_total
execute if score @s ch_tm_magic_adure_count_tick matches 100.. run playsound entity.zombie.infect player @a ~ ~ ~ 1 1
execute if score @s ch_tm_magic_adure_count_tick matches 100.. run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/end