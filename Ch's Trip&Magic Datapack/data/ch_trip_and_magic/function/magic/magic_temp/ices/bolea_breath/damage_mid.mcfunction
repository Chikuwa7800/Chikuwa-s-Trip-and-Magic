execute if entity @s[tag=!ch_tm_using_shield] run function ch_trip_and_magic:magic/effect/frost/start {"time":"4"}
execute if entity @s[tag=!ch_tm_using_shield] run effect give @s slowness 1 0
damage @s 3 ch_trip_and_magic:magic/ice_lv3 by @n[tag=ch_tm_bolea_pl]