##ls_tm_trip_mobs_nomal

execute store result score @s ls_tm_random run random value 0..100

execute if entity @s[scores={ls_tm_random=0..64}] run return run tag @s add ls_tm_trip_mobs

data merge entity @s[scores={ls_tm_random=65..84}] {IsBaby:0b,drop_chances:{mainhand:0},DeathLootTable:"ls_trip_and_magic:entities/fummer_zombie",attributes:[{id:"minecraft:spawn_reinforcements",base:0.8},{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:7},{id:"minecraft:knockback_resistance",base:0.25}]}
item replace entity @s[scores={ls_tm_random=65..84}] weapon.mainhand with iron_hoe
item replace entity @s[scores={ls_tm_random=65..84}] armor.head with acacia_button
item modify entity @s[scores={ls_tm_random=65..84}] armor.head ls_trip_and_magic:command_block
item modify entity @s[scores={ls_tm_random=65..84}] armor.head ls_trip_and_magic:farmer_hat
tag @s[scores={ls_tm_random=65..84}] add ls_tm_trip_mobs_famer_zombie

data merge entity @s[scores={ls_tm_random=85..100}] {IsBaby:0b,attributes:[{id:"minecraft:spawn_reinforcements",base:0.5}]}
item replace entity @s[scores={ls_tm_random=85..100}] armor.head with black_banner[banner_patterns=[{"pattern":"minecraft:skull","color":"green"},{"pattern":"minecraft:border","color":"cyan"}]]

tag @s add ls_tm_trip_firld_boss

tag @s add ls_tm_trip_mobs
