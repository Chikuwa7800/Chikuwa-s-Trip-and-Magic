tag @s add ch_tm_llyr
data merge entity @s {teleport_duration:1,interpolation_duration:1,transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1],translation:[0.5,0.5,0]}}
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_llyr_pl] ch_tm_entity_id
execute store result entity @s data."owner" int 1 run scoreboard players get @n[tag=ch_tm_llyr_pl] ch_tm_entity_id
item replace entity @s contents with acacia_button[item_model="trip_magic:magic/llyr_deluge"]
item modify entity @s contents ch_trip_and_magic:magic/llyr/0
