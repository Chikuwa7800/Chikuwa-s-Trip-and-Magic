scoreboard players reset @s ch_tm_magic_lightning_tp_count
scoreboard players reset @s ch_tm_magic_lightning_random
scoreboard players reset @s ch_tm_magic_lightning_random_count
scoreboard players reset @s ch_tm_magic_lightning_random_1
scoreboard players reset @s ch_tm_magic_lightning_random_count_1
scoreboard players reset @s ch_tm_magic_lightning_random_2
scoreboard players reset @s ch_tm_magic_lightning_random_count_2
tag @s add ch_tm_magic_lightning_dash_pl
execute anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/tp_loop
