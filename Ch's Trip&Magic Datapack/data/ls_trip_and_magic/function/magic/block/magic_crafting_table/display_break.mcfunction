execute if entity @p[gamemode=!creative,gamemode=!spectator] if entity @s[tag=ch_tm_magic_crafting_table_core_item_display_wakame_core] run loot spawn ~ ~0.25 ~ loot ls_trip_and_magic:item/magic/frenzied_core
execute if entity @p[gamemode=!creative,gamemode=!spectator] if entity @s[tag=ch_tm_magic_crafting_table_core_item_display_wakame_material_conduit,tag=ch_tm_magic_crafting_table_material_item_display_collected] run loot spawn ~ ~0.25 ~ loot blocks/conduit
execute if entity @p[gamemode=!creative,gamemode=!spectator] if entity @s[tag=ch_tm_magic_crafting_table_core_item_display_wakame_material_prismarine_seagrass,tag=ch_tm_magic_crafting_table_material_item_display_collected] run loot spawn ~ ~0.25 ~ loot ls_trip_and_magic:item/magic/prismarine_seagrass
execute if entity @p[gamemode=!creative,gamemode=!spectator] if entity @s[tag=ch_tm_magic_crafting_table_core_item_display_wakame_material_fortified_wakame,tag=ch_tm_magic_crafting_table_material_item_display_collected] run loot spawn ~ ~0.25 ~ loot ls_trip_and_magic:item/magic/fortified_wakame
execute if entity @p[gamemode=!creative,gamemode=!spectator] if entity @s[tag=ch_tm_magic_crafting_table_core_item_display_magic_book] run loot spawn ~ ~0.25 ~ loot ls_trip_and_magic:item/magic/empty_magic_book
execute if entity @p[gamemode=!creative,gamemode=!spectator] if entity @s[tag=ch_tm_magic_crafting_table_core_item_display_element_core_to_lv2] run loot spawn ~ ~0.25 ~ loot ls_trip_and_magic:item/magic/element_upgrade/lapis

kill @s
