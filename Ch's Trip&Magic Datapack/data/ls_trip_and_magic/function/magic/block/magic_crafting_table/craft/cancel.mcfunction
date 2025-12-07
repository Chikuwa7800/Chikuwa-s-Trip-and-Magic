tag @s remove ch_tm_magic_crafting_table_prep
tag @n[tag=ch_tm_magic_crafting_table_select] remove ch_tm_magic_crafting_table_prep
execute as @e[tag=ch_tm_magic_crafting_table_item_display,distance=..1] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/display_break
playsound entity.item_frame.remove_item block @a ~ ~ ~