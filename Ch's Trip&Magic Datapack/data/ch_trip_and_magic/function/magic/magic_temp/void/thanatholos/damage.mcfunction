$damage @s $(damage) ch_trip_and_magic:magic/void_lv2 by @n[tag=ch_tm_thantholos_pl]
execute if entity @s[tag=!ch_tm_using_shield] run function ch_trip_and_magic:magic/effect/abyss/start {"time":"3"}