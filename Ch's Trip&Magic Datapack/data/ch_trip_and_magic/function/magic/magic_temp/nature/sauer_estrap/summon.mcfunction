execute summon item_display run function ch_trip_and_magic:magic/magic_temp/nature/sauer_estrap/init
execute store result score @n[tag=ch_tm_magic_sauer_estrap] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute store result entity @n[tag=ch_tm_magic_sauer_estrap] data."owner" int 1 run scoreboard players get @s ch_tm_entity_id
