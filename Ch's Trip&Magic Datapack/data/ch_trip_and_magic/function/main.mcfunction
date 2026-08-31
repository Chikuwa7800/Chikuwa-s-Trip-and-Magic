execute as @a at @s run function ch_trip_and_magic:player_tick
execute as @e[type=!#ch_trip_and_magic:cannot_hurt_entities] at @s run function ch_trip_and_magic:mob_tick
execute as @e[type=#ch_trip_and_magic:cannot_hurt_entities] at @s run function ch_trip_and_magic:system_tick
