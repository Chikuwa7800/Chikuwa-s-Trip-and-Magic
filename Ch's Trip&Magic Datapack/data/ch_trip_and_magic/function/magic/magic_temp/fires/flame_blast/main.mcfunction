scoreboard players add @s ch_tm_tick 1

particle large_smoke ~ ~ ~ 0.25 0.25 0.25 0. 3 force
particle lava ~ ~ ~ 0 0 0 0. 3 force
particle flame ~ ~ ~ 0.35 0.35 0.35 0. 3 force
execute if score @s ch_tm_tick matches 1..2 run tp @s ^ ^ ^0.5
execute if score @s ch_tm_tick matches 3..5 run tp @s ^ ^ ^0.75
execute if score @s ch_tm_tick matches 6..10 run tp @s ^ ^ ^1
execute if score @s ch_tm_tick matches 11..15 run tp @s ^ ^ ^1.25
execute if score @s ch_tm_tick matches 16.. run tp @s ^ ^ ^1.5
execute if score @s ch_tm_tick matches 50..74 run particle dust{color:[1.0,0.75,0.0],scale:2.5} ~ ~ ~ 0.5 0.5 0.5 0. 5
execute if score @s ch_tm_tick matches 75 run playsound entity.tnt.primed neutral @a ~ ~ ~ 3 0.5
execute if score @s ch_tm_tick matches 75.. run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/warn
execute if score @s ch_tm_tick matches 100.. run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
$execute positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_blast_ball_display,scores={ch_tm_entity_id=!$(owner)}] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/explode_crit_hit
$execute positioned ^ ^ ^-1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ch_tm_magic_pl,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_blast_ball_display,scores={ch_tm_entity_id=!$(owner)}] positioned ~0.5 ~0.5 ~0.5 run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/explode_crit_hit
execute unless block ^ ^ ^-1.5 #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
execute unless block ^ ^ ^-1 #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
execute unless block ^ ^ ^ #ch_trip_and_magic:no_collision run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/explode
