##ls_tm_trip_mobs_nomal

execute if entity @s[predicate=ls_trip_and_magic:trip/mobs/passenger] run return run tag @s add ls_tm_trip_mobs

execute store result score @s ls_tm_random run random value 0..100

execute if entity @s[scores={ls_tm_random=0..49}] run return run tag @s add ls_tm_trip_mobs

data merge entity @s[scores={ls_tm_random=50..59}] {drop_chances:{mainhand:0,offhand:0,head:0},DeathLootTable:"ls_trip_and_magic:entities/magic_skeleton"}
item replace entity @s[scores={ls_tm_random=50..59}] armor.head with acacia_button
item replace entity @s[scores={ls_tm_random=50..59}] weapon.mainhand with acacia_button
item replace entity @s[scores={ls_tm_random=50..59}] weapon.offhand with acacia_button
item modify entity @s[scores={ls_tm_random=50..59}] weapon.mainhand ls_trip_and_magic:bow
item modify entity @s[scores={ls_tm_random=50..59}] weapon.offhand ls_trip_and_magic:w_stick
item modify entity @s[scores={ls_tm_random=50..59}] armor.head ls_trip_and_magic:command_block
item modify entity @s[scores={ls_tm_random=50..59}] weapon.mainhand ls_trip_and_magic:weapons/magic_staff
item modify entity @s[scores={ls_tm_random=50..59}] weapon.offhand ls_trip_and_magic:weapons/nature_spell_book
item modify entity @s[scores={ls_tm_random=50..59}] armor.head ls_trip_and_magic:nature_magic_hat
tag @s[scores={ls_tm_random=50..59}] add ls_tm_trip_mobs_magic_skeleton

item replace entity @s[scores={ls_tm_random=60..80}] armor.head with acacia_button
item replace entity @s[scores={ls_tm_random=60..80}] weapon.mainhand with acacia_button
item modify entity @s[scores={ls_tm_random=60..80}] weapon.mainhand ls_trip_and_magic:w_pickaxe
item modify entity @s[scores={ls_tm_random=60..80}] armor.head ls_trip_and_magic:command_block
item modify entity @s[scores={ls_tm_random=60..80}] weapon.mainhand ls_trip_and_magic:weapons/iron_spear
item modify entity @s[scores={ls_tm_random=60..80}] armor.head ls_trip_and_magic:melee_hat
data merge entity @s[scores={ls_tm_random=60..80}] {DeathLootTable:"ls_trip_and_magic:entities/melee_skeleton",drop_chances:{mainhand:0.05,head:0},attributes:[{id:"minecraft:attack_damage",base:-1}]}
attribute @s[scores={ls_tm_random=60..80}] entity_interaction_range base set 4

data merge entity @s[scores={ls_tm_random=81..99}] {DeathLootTable:"ls_trip_and_magic:entities/bone_spawner_skeleton",drop_chances:{mainhand:0.05},attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:movement_speed",base:0.25}]}
item replace entity @s[scores={ls_tm_random=81..99}] weapon.mainhand with acacia_button
item replace entity @s[scores={ls_tm_random=81..99}] weapon.mainhand with iron_axe
item modify entity @s[scores={ls_tm_random=81..99}] weapon ls_trip_and_magic:weapons/undead_killer

execute if entity @s[scores={ls_tm_random=100}] run summon skeleton_horse ~ ~ ~ {SkeletonTrap:1b,PersistenceRequired:0b,SkeletonTrapTime:17000}
execute if entity @s[scores={ls_tm_random=100}] run tp 0.0 -500 0.0
execute if entity @s[scores={ls_tm_random=100}] run kill @s

tag @s add ls_tm_trip_firld_boss

tag @s add ls_tm_trip_mobs
