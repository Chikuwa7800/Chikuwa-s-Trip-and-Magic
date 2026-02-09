clear @p[nbt={SelectedItem:{components:{ "minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "item_material","material_type": "element_core","item_condition": "fire"}}}},gamemode=!creative,gamemode=!spectator] command_block[custom_data={"datapack_type": "ls_trip_magic", "item_type": "item_material","material_type": "element_core","item_condition": "fire"}] 1
playsound trip_magic:block.magic_crafting_table.collected_item block @a
particle enchant ~ ~ ~ 0.25 0.125 0.25 0. 25
tag @s add ch_tm_magic_crafting_table_cannot_contact
tag @s add ch_tm_magic_crafting_table_crafting_magic_book_fire
