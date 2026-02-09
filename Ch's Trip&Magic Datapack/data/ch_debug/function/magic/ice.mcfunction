loot replace entity @s weapon.offhand loot ch_trip_and_magic:item/weapons/magic/book/lv_2/ice
playsound item.armor.equip_leather player @a ^ ^ ^ 1 1
execute positioned ~ ~1 ~ run particle minecraft:snowflake ~ ~0.25 ~ 0.25 0.25 0.25 0. 25
execute positioned ~ ~1 ~ run particle minecraft:flash{color:-8519681}
execute positioned ~ ~1 ~ run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute positioned ~ ~1 ~ run particle minecraft:block{block_state:ice} ~ ~0.25 ~ 0.25 0.25 0.25 0. 10
execute positioned ~ ~1 ~ run particle minecraft:dust{color:[0.863,0.969,0.973],scale:1} ~ ~0.25 ~ 0.25 0.25 0.25 0 10
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute positioned ~ ~1 ~ run playsound trip_magic:block.magic_crafting_table.ice block @a ~ ~ ~