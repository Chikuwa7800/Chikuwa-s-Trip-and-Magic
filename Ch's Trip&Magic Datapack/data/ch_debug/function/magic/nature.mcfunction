loot replace entity @s weapon.offhand loot ls_trip_and_magic:item/weapons/magic/book/lv_2/nature
playsound item.armor.equip_leather player @a ^ ^ ^ 1 1
execute positioned ~ ~1 ~ run particle minecraft:poof ~ ~0.25 ~ 0.25 0.25 0.25 0. 25
execute positioned ~ ~1 ~ run particle minecraft:flash{color:-16750570}
execute positioned ~ ~1 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute positioned ~ ~1 ~ run particle minecraft:block{block_state:tall_grass} ~ ~0.25 ~ 0.25 0.25 0.25 0. 5
execute positioned ~ ~1 ~ run particle minecraft:block{block_state:dirt} ~ ~0.25 ~ 0.25 0.25 0.25 0. 5
execute positioned ~ ~1 ~ run particle minecraft:spore_blossom_air ~ ~0.25 ~ 0.0 0.0 0.0 0 10
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.nature block @a ~ ~ ~