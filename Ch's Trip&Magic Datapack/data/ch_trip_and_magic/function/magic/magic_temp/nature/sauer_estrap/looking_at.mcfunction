particle enchant ~ ~ ~ 0.0 0.0 0.0 0 1
particle item_slime ~ ~ ~ 0.0 0.0 0.0 0 1
execute unless block ~ ~ ~ #ch_trip_and_magic:no_collision_exclude_water run return run function ch_trip_and_magic:magic/magic_temp/nature/sauer_estrap/summon
execute unless entity @s[distance=..15] run return run function ch_trip_and_magic:magic/magic_temp/nature/sauer_estrap/summon_rapid_explode
execute positioned ^ ^ ^0.125 run function ch_trip_and_magic:magic/magic_temp/nature/sauer_estrap/looking_at