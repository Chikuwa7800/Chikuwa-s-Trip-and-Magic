tag @s add ch_tm_magic_crafting_table_prep
tag @n[tag=ch_tm_magic_crafting_table_select] add ch_tm_magic_crafting_table_prep

playsound trip_magic:block.magic_crafting_table.place.core block @a ~ ~ ~

execute if entity @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{"item_type": "item_core","core_type": "frenzied_core"}}}}] run function ls_trip_and_magic:magic/block/magic_crafting_table/craft/items/wakame_sword/prep

execute if entity @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{"item_type": "item_core","core_type": "magic_book"}}}}] run function ls_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/prep

execute if entity @p[nbt={SelectedItem:{components:{"minecraft:custom_data":{"item_type": "item_core","core_type": "element_core_upgrade_lv1"}}}}] run function ls_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/prep

