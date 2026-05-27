particle enchant ~ ~ ~ 0.0 0.0 0.0 0 1
particle crimson_spore ~ ~ ~ 0.0 0.0 0.0 0 1
particle smoke ~ ~0.1 ~ 0.0 0.0 0.0 0 1
execute unless block ~ ~ ~ #ch_trip_and_magic:no_collision run return run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/explotion
execute unless entity @s[distance=..22.5] run return run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/explotion
execute positioned ^ ^ ^0.125 run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/looking_at