##ls_tm_trip_mobs_nomal

execute if entity @s[predicate=ls_trip_and_magic:trip/mobs/passenger] run return run tag @s add ls_tm_trip_mobs

execute store result score @s ls_tm_random run random value 0..100
execute if entity @s[scores={ls_tm_random=0..49}] run return run tag @s add ls_tm_trip_mobs

data merge entity @s[scores={ls_tm_random=50..59}] {drop_chances:{mainhand:0,offhand:0,head:0},DeathLootTable:"ls_trip_and_magic:entities/magic_bogged"}
item replace entity @s[scores={ls_tm_random=50..59}] armor.head with acacia_button
item replace entity @s[scores={ls_tm_random=50..59}] weapon.mainhand with acacia_button
item replace entity @s[scores={ls_tm_random=50..59}] weapon.offhand with acacia_button
item modify entity @s[scores={ls_tm_random=50..59}] weapon.mainhand ls_trip_and_magic:bow
item modify entity @s[scores={ls_tm_random=50..59}] weapon.offhand ls_trip_and_magic:w_stick
item modify entity @s[scores={ls_tm_random=50..59}] armor.head ls_trip_and_magic:command_block
item modify entity @s[scores={ls_tm_random=50..59}] weapon.mainhand ls_trip_and_magic:weapons/magic_staff
item modify entity @s[scores={ls_tm_random=50..59}] weapon.offhand ls_trip_and_magic:weapons/water_spell_book
item modify entity @s[scores={ls_tm_random=50..59}] armor.head ls_trip_and_magic:ice_magic_hat
tag @s[scores={ls_tm_random=50..59}] add ls_tm_trip_mobs_magic_bogged

item replace entity @s[scores={ls_tm_random=60..100}] armor.head with acacia_button
item replace entity @s[scores={ls_tm_random=60..100}] weapon.mainhand with acacia_button
item modify entity @s[scores={ls_tm_random=60..100}] weapon.mainhand ls_trip_and_magic:w_pickaxe
item modify entity @s[scores={ls_tm_random=60..100}] armor.head ls_trip_and_magic:command_block
item modify entity @s[scores={ls_tm_random=60..100}] weapon.mainhand ls_trip_and_magic:weapons/iron_glaive
item modify entity @s[scores={ls_tm_random=60..100}] armor.head ls_trip_and_magic:melee_hat
data merge entity @s[scores={ls_tm_random=60..100}] {DeathLootTable:"ls_trip_and_magic:entities/melee_skeleton",drop_chances:{mainhand:0.05,head:0},attributes:[{id:"minecraft:attack_damage",base:-3}]}
attribute @s[scores={ls_tm_random=60..100}] entity_interaction_range base set 4

tag @s add ls_tm_trip_firld_boss

tag @s add ls_tm_trip_mobs