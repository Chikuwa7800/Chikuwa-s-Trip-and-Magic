execute if predicate ls_trip_and_magic:trip/claive/offhand_cross_notready run function ls_trip_and_magic:trip/items/claive/switch/g_n

execute if predicate ls_trip_and_magic:trip/claive/offhand_cross_ready run function ls_trip_and_magic:trip/items/claive/switch/g_r

execute if predicate ls_trip_and_magic:trip/claive/offhand_glaive_notready run function ls_trip_and_magic:trip/items/claive/switch/c_n

execute if predicate ls_trip_and_magic:trip/claive/offhand_glaive_ready run function ls_trip_and_magic:trip/items/claive/switch/c_r

playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.75
tag @s add ls_tm_craive_canuse