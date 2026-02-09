item replace entity @s armor.head with acacia_button
item replace entity @s weapon.mainhand with acacia_button
item modify entity @s weapon.mainhand ch_trip_and_magic:w_pickaxe
item modify entity @s armor.head ch_trip_and_magic:command_block
item modify entity @s weapon.mainhand ch_trip_and_magic:weapons/iron_glaive
item modify entity @s armor.head ch_trip_and_magic:melee_hat
data merge entity @s {DeathLootTable:"ch_trip_and_magic:entities/melee_skeleton",drop_chances:{mainhand:0.05,head:0},attributes:[{id:"minecraft:attack_damage",base:-3}]}
tag @s add ch_tm_trip_firld_boss

tag @s add ch_tm_trip_mobs