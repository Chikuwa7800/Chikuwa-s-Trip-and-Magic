##ch_tm_wind_display

scoreboard players add @s ch_tm_tick 1

particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0. 3 force
particle poof ~ ~ ~ 0.2 0.2 0.2 0. 5
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,tag=!ch_tm_wind_display,type=!#ch_trip_and_magic:mobs] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/hit
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind
execute if entity @s[scores={ch_tm_tick=200..}] run function ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind

schedule function ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/unable_cancel 1t

tp @s ^ ^ ^1