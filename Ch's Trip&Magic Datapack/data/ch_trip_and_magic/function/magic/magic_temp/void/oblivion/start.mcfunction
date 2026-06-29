tag @s add ch_tm_magic_oblivion_pl
scoreboard players reset @s ch_tm_magic_oblivion_loop
execute positioned ~ ~1 ~ run function ch_effect_temp:vfx/ginga/flash/play
execute anchored eyes positioned ^ ^ ^0.01 run function ch_trip_and_magic:magic/magic_temp/void/oblivion/tp_loop
effect give @s strength 1 1