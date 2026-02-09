clear @p[nbt={SelectedItem:{components:{ "minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","item_condition": "water","weapon_type": "magic_book","spell_level":["1"]}}}},gamemode=!creative,gamemode=!spectator] warped_fungus_on_a_stick[custom_data={"datapack_type": "ls_trip_magic","item_type": "weapon","item_condition": "water","weapon_type": "magic_book","spell_level":["1"]}] 1
playsound trip_magic:block.magic_crafting_table.collected_item block @a
particle enchant ~ ~ ~ 0.25 0.125 0.25 0. 25
tag @s add ch_tm_magic_crafting_table_cannot_contact
tag @s add ch_tm_magic_crafting_table_crafting_magic_book_water_lv2
