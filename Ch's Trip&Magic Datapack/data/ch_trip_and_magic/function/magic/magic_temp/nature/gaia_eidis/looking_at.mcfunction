particle enchant ~ ~ ~ 0.0 0.0 0.0 0 1
particle dust{color:98567,scale:2} ~ ~ ~ 0.0 0.0 0.0 0 1
particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 1
execute unless block ~ ~ ~ #ch_trip_and_magic:no_collision run return run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/summon
execute unless entity @s[distance=..5] run return run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/summon
execute positioned ^ ^ ^0.125 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/looking_at