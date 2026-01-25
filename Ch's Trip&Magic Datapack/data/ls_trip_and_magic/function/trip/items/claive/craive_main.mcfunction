execute if predicate ls_trip_and_magic:trip/claive/offhand run function ls_trip_and_magic:trip/items/claive/switch
scoreboard players remove @s ls_tm_craive_cooldown 1
execute unless block ~ ~2.5 ~ #ls_trip_and_magic:no_collision run tag @s remove ls_tm_craive_canuse
execute if score @s ls_tm_craive_cooldown matches ..0 if block ~ ~2.5 ~ #ls_trip_and_magic:no_collision run tag @s add ls_tm_craive_canuse