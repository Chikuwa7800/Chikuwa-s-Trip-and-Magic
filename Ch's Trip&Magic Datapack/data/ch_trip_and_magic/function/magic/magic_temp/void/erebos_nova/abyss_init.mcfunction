data merge entity @s {block_state:{Name:"end_portal"},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0,0,0],translation:[0,0,0]},interpolation_duration:10,teleport_duration:10}
rotate @s ~ ~
tag @s add ch_tm_magic_erebos
tag @s add ch_tm.magic_entity
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_magic_erebos_pl] ch_tm_entity_id
execute store result entity @s data."owner" int 1 run scoreboard players get @s ch_tm_entity_id
