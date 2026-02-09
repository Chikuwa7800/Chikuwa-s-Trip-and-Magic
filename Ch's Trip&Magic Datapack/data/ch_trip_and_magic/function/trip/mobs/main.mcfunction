function ch_trip_and_magic:trip/mobs/firld_boss/main

execute as @e[type=skeleton,tag=!ch_tm_trip_mobs,tag=!ch_tm_spawned] at @s run function ch_trip_and_magic:trip/mobs/firld_boss/summon/skeleton
execute as @e[type=zombie,tag=!ch_tm_trip_mobs,tag=!ch_tm_spawned] at @s run function ch_trip_and_magic:trip/mobs/firld_boss/summon/zombie
execute as @e[type=stray,tag=!ch_tm_trip_mobs,tag=!ch_tm_spawned] at @s run function ch_trip_and_magic:trip/mobs/firld_boss/summon/stray
execute as @e[type=bogged,tag=!ch_tm_trip_mobs,tag=!ch_tm_spawned] at @s run function ch_trip_and_magic:trip/mobs/firld_boss/summon/bogged
execute as @e[type=husk,tag=!ch_tm_trip_mobs,tag=!ch_tm_spawned] at @s run function ch_trip_and_magic:trip/mobs/firld_boss/summon/husk
execute as @e[type=parched,tag=!ch_tm_trip_mobs,tag=!ch_tm_spawned] at @s run function ch_trip_and_magic:trip/mobs/firld_boss/summon/parched