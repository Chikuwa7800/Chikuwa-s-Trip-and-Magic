##ls_tm_wind_display

scoreboard players add @s ls_tm_tick 1

particle sweep_attack ~ ~ ~ 0.1 0.1 0.1 0. 3 force
particle poof ~ ~ ~ 0.2 0.2 0.2 0. 5
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ls_tm_magic_pl,tag=!ls_tm_wind_display,type=!#ls_trip_and_magic:mobs] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind
execute unless block ^ ^ ^ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind
execute if entity @s[scores={ls_tm_tick=200..}] run function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind

schedule function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/unable_cancel 1t

tp @s ^ ^ ^1