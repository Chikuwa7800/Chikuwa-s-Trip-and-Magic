execute summon marker run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/set_location/marker
summon item_display ~ ~1002 ~ {item:{id:"minecraft:acacia_button"},transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]}}
execute positioned ~ ~1002 ~ run item replace entity @n[type=item_display] contents from entity @s weapon.mainhand
execute positioned ~ ~1002 ~ as @n[type=item_display] run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/set_location/set_pos_mainhand
