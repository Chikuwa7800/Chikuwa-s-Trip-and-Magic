loot replace entity @s weapon.mainhand loot ls_trip_and_magic:item/weapons/knife/iron
item modify entity @s weapon.mainhand ch_debug:unbreakable
playsound item.armor.equip_iron player @a ^ ^ ^ 1 1
particle block{block_state:"minecraft:iron_block"} ~ ~1 ~ 0.25 0.25 0.25 0. 10