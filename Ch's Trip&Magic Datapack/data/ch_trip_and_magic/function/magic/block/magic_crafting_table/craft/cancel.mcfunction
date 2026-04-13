tag @s remove ch_tm_magic_crafting_table_prep
tag @n[tag=ch_tm_magic_crafting_table_select] remove ch_tm_magic_crafting_table_prep
execute if entity @p[gamemode=!creative,gamemode=!spectator] as @e[tag=ch_tm_magic_crafting_table_item_display,distance=..1] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/display_break
playsound trip_magic:block.magic_crafting_table.collect_item block @a ~ ~ ~