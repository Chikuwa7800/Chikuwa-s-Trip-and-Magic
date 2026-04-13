clear @p[predicate=ch_trip_and_magic:magic/craft/material/spell_book/nature,predicate=ch_trip_and_magic:magic/craft/material/spell_book/_base,predicate=ch_trip_and_magic:magic/craft/material/spell_book/lv1/_base,gamemode=!creative,gamemode=!spectator] warped_fungus_on_a_stick[custom_data={"item_condition": "nature","weapon_type": "magic_book","spell_level":["1"]}] 1
playsound trip_magic:block.magic_crafting_table.collected_item block @a
particle enchant ~ ~ ~ 0.25 0.125 0.25 0. 25
tag @s add ch_tm_magic_crafting_table_cannot_contact
tag @s add ch_tm_magic_crafting_table_crafting_magic_book_nature_lv2
