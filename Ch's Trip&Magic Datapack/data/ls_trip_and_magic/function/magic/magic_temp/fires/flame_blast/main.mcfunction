scoreboard players add @s ls_tm_tick 1

particle large_smoke ~ ~ ~ 0.25 0.25 0.25 0. 3 force
particle lava ~ ~ ~ 0 0 0 0. 3 force
particle flame ~ ~ ~ 0.35 0.35 0.35 0. 3 force
execute if entity @s[scores={ls_tm_tick=50..74}] run particle dust{color:[1.0,0.75,0.0],scale:2.5} ~ ~ ~ 0.5 0.5 0.5 0. 5
execute if entity @s[scores={ls_tm_tick=75}] run playsound entity.tnt.primed neutral @a ~ ~ ~ 3 0.5
execute if entity @s[scores={ls_tm_tick=75..}] run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/warn
execute if entity @s[scores={ls_tm_tick=100..}] run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:mobs,tag=!ls_tm_blast_ball_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/explode_crit_hit
execute unless block ^ ^ ^1.5 #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
execute unless block ^ ^ ^1 #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
execute unless block ^ ^ ^ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
tp @s ^ ^ ^1.5
