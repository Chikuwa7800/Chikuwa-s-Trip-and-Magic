tp @s ^ ^ ^0.5 ~ ~1.5
execute positioned ~-0.5 ~-0.5 ~-0.5 run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.01 2 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 run particle campfire_cosy_smoke ~ ~ ~ 0.01 0.01 0.01 0.0 2 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 run particle flame ~ ~ ~ 0.25 0.25 0.25 0.01 3 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 run particle smoke ^ ^ ^-0.5 0.5 0.5 0.5 0.01 2 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 run particle campfire_cosy_smoke ^ ^ ^-0.5 0.01 0.01 0.01 0.0 2 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 run particle flame ^ ^ ^-0.5 0.25 0.25 0.25 0.01 3 force @a
execute positioned ~-0.5 ~-0.5 ~-0.5 unless block ^ ^ ^0.5 #ch_trip_and_magic:no_collision run function ch_effect_temp:effect/breaked_block/break
execute if entity @e[dx=1,dy=1,dz=1,type=!#ch_trip_and_magic:cannot_hurt_entities] run function ch_effect_temp:effect/breaked_block/break
