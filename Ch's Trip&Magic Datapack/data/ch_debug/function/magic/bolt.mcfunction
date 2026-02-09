loot replace entity @s weapon.offhand loot ch_trip_and_magic:item/weapons/magic/book/lv_2/bolt
playsound item.armor.equip_leather player @a ^ ^ ^ 1 1
execute positioned ~ ~1 ~ run particle minecraft:electric_spark ~ ~0.25 ~ 0.25 0.25 0.25 0. 25
execute positioned ~ ~1 ~ run particle minecraft:flash{color:-6647}
execute positioned ~ ~1 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute positioned ~ ~1 ~ run particle minecraft:wax_on ~ ~0.25 ~ 0.25 0.25 0.25 0.2 10
execute positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~0.25 ~ 0.0 0.0 0.0 0.25 10
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.bolt block @a ~ ~ ~