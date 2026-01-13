tag @s add ch_tm_spell_charged_lv3
playsound block.trial_spawner.spawn_item_begin player @a ~ ~ ~ 1 0.5
playsound block.enchantment_table.use hostile @a ~ ~ ~ 1 0.75
playsound block.grindstone.use hostile @a ~ ~ ~ 1 2
particle witch ~ ~0.1 ~ 0.1 0.1 0.1 0.25 20 force
particle dust{color:[0.969,0.867,0.173],scale:1} ~ ~0.1 ~ 0.5 0.5 0.5 0.25 20 force
execute anchored eyes run particle wax_off ^ ^ ^0.1 0.25 0.25 0.25 0.1 7 force

execute if predicate ls_trip_and_magic:magic/spell_book/bolt run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/bolt
execute if predicate ls_trip_and_magic:magic/spell_book/fire run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/fire
execute if predicate ls_trip_and_magic:magic/spell_book/ice run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/ice
execute if predicate ls_trip_and_magic:magic/spell_book/nature run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/nature
execute if predicate ls_trip_and_magic:magic/spell_book/void run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/void
execute if predicate ls_trip_and_magic:magic/spell_book/water run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/water