execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#ls_trip_and_magic:no_damage_entity,dx=0,dy=0,dz=0] positioned ~-0.75 ~-0.75 ~-0.75 as @s[dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 as @n[type=item_display,tag=ch_tm.magicball.tick] run function ch_trip_magic_objects:entities/magic_ball/hit_as_magic_ball with entity @s data

execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!#ls_trip_and_magic:no_damage_entity,dx=0,dy=0,dz=0] positioned ~-0.75 ~-0.75 ~-0.75 as @s[dx=0,dy=0,dz=0] positioned ~1 ~1 ~1 run function ch_trip_magic_objects:entities/magic_ball/hit_as_entity with entity @n[type=item_display,tag=ch_tm.magic_ball.hit] data

execute unless block ~ ~ ~ #ls_trip_and_magic:no_collision run function ch_trip_magic_objects:entities/magic_ball/hit_as_magic_ball with entity @s data

$execute positioned ^ ^ ^-0.25 if entity @s[distance=..$(movement_speed)] run function ch_trip_magic_objects:entities/magic_ball/colision with entity @s data
