loot replace entity @s weapon.offhand loot ls_trip_and_magic:item/weapons/magic/book/lv_2/void
playsound item.armor.equip_leather player @a ^ ^ ^ 1 1
execute positioned ~ ~1 ~ run particle minecraft:sonic_boom ~ ~0.25 ~ 0.0 0.0 0.0 0. 1
execute positioned ~ ~1 ~ run particle minecraft:flash{color:-12255123}
execute positioned ~ ~1 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute positioned ~ ~1 ~ run particle minecraft:sculk_soul ~ ~0.25 ~ 0.25 0.25 0.25 0. 5
execute positioned ~ ~1 ~ run particle minecraft:soul ~ ~0.25 ~ 0.25 0.25 0.25 0. 5
execute positioned ~ ~1 ~ run particle minecraft:dust{color:[0.161,0.055,0.188],scale:1} ~ ~0.25 ~ 0.25 0.25 0.25 0 5
execute positioned ~ ~1 ~ run particle minecraft:dust{color:[0.322,0.11,0.373],scale:2} ~ ~0.25 ~ 0.25 0.25 0.25 0 5
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.void block @a ~ ~ ~