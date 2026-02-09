loot replace entity @s weapon.offhand loot ch_trip_and_magic:item/weapons/magic/book/lv_2/fire
playsound item.armor.equip_leather player @a ^ ^ ^ 1 1
execute positioned ~ ~1 ~ run particle minecraft:flame ~ ~0.25 ~ 0.25 0.25 0.25 0. 25
execute positioned ~ ~1 ~ run particle minecraft:flash{color:-36096}
execute positioned ~ ~1 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute positioned ~ ~1 ~ run particle minecraft:crimson_spore ~ ~0.25 ~ 0.25 0.25 0.25 0. 10
execute positioned ~ ~1 ~ run particle minecraft:lava ~ ~0.25 ~ 0.0 0.0 0.0 0 10
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.fire block @a ~ ~ ~