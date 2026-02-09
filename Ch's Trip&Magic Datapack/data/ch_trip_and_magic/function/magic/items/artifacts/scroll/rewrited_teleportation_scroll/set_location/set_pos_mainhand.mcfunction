item modify entity @s contents ch_trip_and_magic:items/scroll/teleportation_has_location
item modify entity @s contents ch_trip_and_magic:items/enchant_glint
execute store result entity @s item.components."minecraft:custom_data"."saved_location" int 1 positioned ~ ~-1002 ~ run scoreboard players get @n[tag=ch_tm_re_teleportation_scroll_marker] ch_tm_sec_entity_id
execute positioned ~ ~-1002 ~ run item replace entity @p weapon.mainhand from entity @s contents
kill @s