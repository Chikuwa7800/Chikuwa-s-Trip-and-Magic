execute if entity @s[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=ch_trip_and_magic:facing] run function ch_trip_and_magic:magic/block/magic_crafting_table/start
execute if entity @s[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=!ch_trip_and_magic:facing] run function ch_trip_and_magic:magic/block/magic_crafting_table/start_wall
execute if entity @s[tag=ch_tm_magic_crafting_table_core,type=interaction] run function ch_trip_and_magic:magic/block/magic_crafting_table/tick
execute if entity @s[tag=ch_tm.magic_entity] run function ch_trip_and_magic:magic/magic_entities
execute if entity @s[tag=ch_tm.magic_bullet] run function ch_trip_and_magic:magic/entities/bullet/main with entity @s data