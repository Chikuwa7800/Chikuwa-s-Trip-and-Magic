##ch_tm_fireball_display
scoreboard players add @s ch_tm_tick 1
particle flame ~ ~ ~ 0.1 0.1 0.1 0. 13 force
particle smoke ~ ~ ~ 0 0 0 0. 10 force

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_fireball_display] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/fires/blaze_flare/hit
execute if entity @s[scores={ch_tm_tick=225..}] run function ch_trip_and_magic:magic/magic_temp/fires/blaze_flare/fire
execute unless loaded ^ ^ ^1.25 run kill @s
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/fires/blaze_flare/fire

tp @s ^ ^ ^0.75