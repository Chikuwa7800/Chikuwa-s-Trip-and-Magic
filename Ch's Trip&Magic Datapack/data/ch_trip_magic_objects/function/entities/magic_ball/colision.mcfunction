execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#ch_trip_and_magic:no_damage_entity,dx=0,dy=0,dz=0] positioned ~-0.75 ~-0.75 ~-0.75 as @s[dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 as @n[type=item_display,tag=ch_tm.magicball.tick] run function ch_trip_magic_objects:entities/magic_ball/hit_as_magic_ball with entity @s data

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#ch_trip_and_magic:no_damage_entity,dx=0,dy=0,dz=0] positioned ~-0.75 ~-0.75 ~-0.75 as @s[dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 run function ch_trip_magic_objects:entities/magic_ball/hit_as_entity with entity @n[type=item_display,tag=ch_tm.magic_ball.hit] data

execute unless block ~ ~ ~ #ch_trip_and_magic:no_collision run function ch_trip_magic_objects:entities/magic_ball/hit_as_magic_ball with entity @s data


execute positioned ^ ^ ^-0.25 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0] unless score @s ch_tm_entity_id = @n[type=item_display,tag=ch_tm.magicball.tick] ch_tm_entity_id positioned ~0.5 ~0.5 ~0.5 run function ch_trip_magic_objects:entities/magic_ball/hit_as_entity with entity @n[type=item_display,tag=ch_tm.magicball.tick] data
