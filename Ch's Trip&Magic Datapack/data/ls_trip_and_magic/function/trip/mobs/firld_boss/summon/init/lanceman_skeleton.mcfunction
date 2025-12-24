item replace entity @s armor.head with acacia_button
item replace entity @s weapon.mainhand with acacia_button
item modify entity @s weapon.mainhand ls_trip_and_magic:w_pickaxe
item modify entity @s armor.head ls_trip_and_magic:command_block
item modify entity @s weapon.mainhand ls_trip_and_magic:weapons/iron_spear
item modify entity @s armor.head ls_trip_and_magic:melee_hat
data merge entity @s {DeathLootTable:"ls_trip_and_magic:entities/melee_skeleton",drop_chances:{mainhand:0.05,head:0},attributes:[{id:"minecraft:attack_damage",base:-1}]}