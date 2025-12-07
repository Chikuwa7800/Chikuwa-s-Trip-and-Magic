loot replace entity @s weapon.offhand loot ls_trip_and_magic:item/weapons/magic/book/lv_2/water
playsound item.armor.equip_leather player @a ^ ^ ^ 1 1
execute positioned ~ ~1 ~ run particle minecraft:rain ~ ~0.5 ~ 0.25 0.25 0.25 0. 25
execute positioned ~ ~1 ~ run particle minecraft:flash{color:-16514827}
execute positioned ~ ~1 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute positioned ~ ~1 ~ run particle minecraft:splash ~ ~0.25 ~ 0.25 0.25 0.25 0. 10
execute positioned ~ ~1 ~ run particle minecraft:underwater ~ ~0.25 ~ 0.5 0.5 0.5 0 10
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.water block @a ~ ~ ~