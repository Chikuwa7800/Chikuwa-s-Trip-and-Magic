tag @s add ch_tm.magic_entity
tag @s add ch_tm_pyro_wave
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_pyro_pl] ch_tm_entity_id
data merge entity @s {teleport_duration:1,item:{id:"minecraft:fire_charge",count:1,components:{"minecraft:item_model":"trip_magic:magic/pyro_wave"}},transformation:{left_rotation:[0.0,0.0,0.0,1],right_rotation:[0.0,0.0,0.0,1],scale:[2,2,2],translation:[0,0.75,0]}}