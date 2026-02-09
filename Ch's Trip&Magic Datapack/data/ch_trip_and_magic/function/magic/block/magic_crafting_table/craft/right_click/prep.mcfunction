tag @s add ch_tm_magic_crafting_table_prep
tag @n[tag=ch_tm_magic_crafting_table_select] add ch_tm_magic_crafting_table_prep

playsound trip_magic:block.magic_crafting_table.place.core block @a ~ ~ ~

execute if entity @p[predicate=ch_trip_and_magic:magic/craft/frenzied_core] run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/wakame_sword/prep

execute if entity @p[predicate=ch_trip_and_magic:magic/craft/empty_spell_book] run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/prep

execute if entity @p[predicate=ch_trip_and_magic:magic/craft/element_core_upgrade_lv1] run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/prep
