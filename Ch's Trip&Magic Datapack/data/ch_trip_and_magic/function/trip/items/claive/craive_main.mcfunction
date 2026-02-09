execute unless block ~ ~2.5 ~ #ch_trip_and_magic:no_collision run tag @s remove ch_tm_craive_canuse
tag @s[tag=ch_tm_hunger] remove ch_tm_craive_canuse
execute if score @s ch_tm_craive_cooldown matches ..0 if block ~ ~2.5 ~ #ch_trip_and_magic:no_collision run tag @s[tag=!ch_tm_hunger] add ch_tm_craive_canuse

execute if predicate ch_trip_and_magic:trip/claive/offhand run function ch_trip_and_magic:trip/items/claive/switch