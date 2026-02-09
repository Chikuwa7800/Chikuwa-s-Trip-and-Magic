execute if data entity @s[tag=!ch_tm_magic_crafting_table_cannot_contact] attack run function ch_trip_and_magic:magic/block/magic_crafting_table/break
execute if entity @s[tag=!ch_tm_magic_crafting_table_cannot_contact] if data entity @n[tag=ch_tm_magic_crafting_table_select] attack run function ch_trip_and_magic:magic/block/magic_crafting_table/break
execute as @e[tag=ch_tm_magic_crafting_table_select,tag=!ch_tm_magic_crafting_table_prep] run particle dust{color:[0.043,0.000,0.671],scale:1} ~ ~0.6 ~ 0.0 0.0 0.0 0.01 1
function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_wakame_sword] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/wakame_sword/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_fire] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/fire/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_bolt] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/bolt/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_ice] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/ice/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_nature] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/nature/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_void] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/void/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_water] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/magic_book/water/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_bolt_lv2] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/bolt/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_fire_lv2] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/fire/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_ice_lv2] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/ice/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_nature_lv2] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/nature/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_void_lv2] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/void/craft_tick
execute as @e[tag=ch_tm_magic_crafting_table_crafting_magic_book_water_lv2] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/craft/items/element_core_to_lv_2/water/craft_tick