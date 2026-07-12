item modify entity @s contents ch_trip_and_magic:items/scroll/teleportation_has_location
item modify entity @s contents ch_trip_and_magic:items/enchant_glint
execute store result entity @s item.components."minecraft:custom_data"."saved_location_x" int 100 positioned ~ ~-1002 ~ run data get entity @p[tag=ch_tm_rewritten_teleportation_scroll_pl] Pos[0]
execute store result entity @s item.components."minecraft:custom_data"."saved_location_y" int 100 positioned ~ ~-1002 ~ run data get entity @p[tag=ch_tm_rewritten_teleportation_scroll_pl] Pos[1]
execute store result entity @s item.components."minecraft:custom_data"."saved_location_z" int 100 positioned ~ ~-1002 ~ run data get entity @p[tag=ch_tm_rewritten_teleportation_scroll_pl] Pos[2]
execute if dimension minecraft:overworld run data modify entity @s item.components."minecraft:custom_data"."dimension" set value 0
execute if dimension minecraft:the_nether run data modify entity @s item.components."minecraft:custom_data"."dimension" set value 1
execute if dimension minecraft:the_end run data modify entity @s item.components."minecraft:custom_data"."dimension" set value 2
execute positioned ~ ~-1002 ~ run item replace entity @p weapon.mainhand from entity @s contents
kill @s