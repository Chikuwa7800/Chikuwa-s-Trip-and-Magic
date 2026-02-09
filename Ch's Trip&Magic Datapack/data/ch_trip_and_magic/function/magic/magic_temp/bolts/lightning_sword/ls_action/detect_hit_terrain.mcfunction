execute if score @s ch_tm_magic_lightsword_tick matches ..50 unless block ^ ^ ^3.5 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..50 unless block ^ ^ ^3.25 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..60 unless block ^ ^ ^3 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..60 unless block ^ ^ ^2.75 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..60 unless block ^ ^ ^2.5 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..60 unless block ^ ^ ^2.25 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..60 unless block ^ ^ ^2 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if score @s ch_tm_magic_lightsword_tick matches ..60 unless block ^ ^ ^1.75 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if entity @s[y_rotation=90] unless block ^ ^ ^2 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute if entity @s[y_rotation=90] unless block ^ ^ ^1.75 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit
execute unless block ^ ^ ^1.5 #ch_trip_and_magic:no_collision run tag @s add ch_tm_magic_lightning_sword_hit

execute if entity @s[tag=ch_tm_magic_lightning_sword_hit] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/effect_hit