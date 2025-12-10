function ls_trip_and_magic:trip/mobs/firld_boss/main

execute as @e[type=skeleton,tag=!ls_tm_trip_mobs] at @s run function ls_trip_and_magic:trip/mobs/firld_boss/summon/skeleton
execute as @e[type=zombie,tag=!ls_tm_trip_mobs] at @s run function ls_trip_and_magic:trip/mobs/firld_boss/summon/zombie
execute as @e[type=stray,tag=!ls_tm_trip_mobs] at @s run function ls_trip_and_magic:trip/mobs/firld_boss/summon/stray
execute as @e[type=bogged,tag=!ls_tm_trip_mobs] at @s run function ls_trip_and_magic:trip/mobs/firld_boss/summon/bogged
execute as @e[type=husk,tag=!ls_tm_trip_mobs] at @s run function ls_trip_and_magic:trip/mobs/firld_boss/summon/husk
execute as @e[type=parched,tag=!ls_tm_trip_mobs] at @s run function ls_trip_and_magic:trip/mobs/firld_boss/summon/parched