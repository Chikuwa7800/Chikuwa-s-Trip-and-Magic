tag @s add ch_tm.magic_entity
tag @s add ch_tm_magic_inferno_surter
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_magic_inferno_surter_pl] ch_tm_entity_id
execute store result entity @s data."owner" int 1 run scoreboard players get @n[tag=ch_tm_magic_inferno_surter_pl] ch_tm_entity_id