scoreboard players add @s ch_tm_tick 1
particle dust{color:3145830,scale:3} ~ ~ ~ 0.125 0.125 0.125 0 5
particle dust{color:8716448,scale:3} ~ ~ ~ 0.125 0.125 0.125 0 5
particle dragon_breath ~ ~ ~ 0.125 0.125 0.125 0 5
execute if entity @s[y_rotation=..0.99999999] run tp @s ^ ^ ^1
execute if entity @s[y_rotation=5..] run tp @s ^ ^ ^1 ~ ~5
execute if entity @s[y_rotation=1..4.9999999] run tp @s ^ ^ ^1 ~ ~1
execute if entity @s[scores={ch_tm_tick=100..}] run function ch_trip_and_magic:magic/magic_temp/void/void_strike/explode
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_void_ball] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/void/void_strike/explode_crit_hit
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/void/void_strike/explode
