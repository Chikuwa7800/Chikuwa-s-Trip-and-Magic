advancement revoke @s only ch_trip_and_magic:magic/countered
execute if entity @s[tag=!ch_tm_adure_counter] run return fail
execute anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/count_effect_loop
playsound trip_magic:magic.fire.adure_burn.hit player @a ~ ~ ~ 1 1
attribute @s attack_damage modifier remove ch_trip_and_magic:double_damage
tag @s remove ch_tm_adure_pl
tag @s remove ch_tm_adure_counter