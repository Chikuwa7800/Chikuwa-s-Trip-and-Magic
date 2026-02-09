execute store result storage trip_magic:temp craive_damage int 1 run data get entity @s equipment.offhand.components."minecraft:damage"
summon item_display ~ ~1000 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]}}
execute positioned ~ ~1000 ~ run item replace entity @n[type=item_display] contents from entity @s weapon.offhand

execute if predicate ch_trip_and_magic:trip/claive/offhand_cross_notready positioned ~ ~1000 ~ as @n[type=item_display] run function ch_trip_and_magic:trip/items/claive/switch/g_n

execute if predicate ch_trip_and_magic:trip/claive/offhand_cross_ready positioned ~ ~1000 ~ as @n[type=item_display] run function ch_trip_and_magic:trip/items/claive/switch/g_r

execute if predicate ch_trip_and_magic:trip/claive/offhand_glaive_notready positioned ~ ~1000 ~ as @n[type=item_display] run function ch_trip_and_magic:trip/items/claive/switch/c_n

execute if predicate ch_trip_and_magic:trip/claive/offhand_glaive_ready positioned ~ ~1000 ~ as @n[type=item_display] run function ch_trip_and_magic:trip/items/claive/switch/c_r

playsound item.armor.equip_leather player @a ~ ~ ~ 1 0.75
tag @s add ch_tm_craive_canuse