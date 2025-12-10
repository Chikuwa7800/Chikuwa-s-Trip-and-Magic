##ls_tm_trip_mobs_nomal

execute if entity @s[predicate=ls_trip_and_magic:trip/mobs/passenger] run return run tag @s add ls_tm_trip_mobs

execute store result score @s ls_tm_random run random value 0..100

execute if entity @s[scores={ls_tm_random=0..64}] run return run tag @s add ls_tm_trip_mobs

data merge entity @s[scores={ls_tm_random=65..84}] {IsBaby:0b,drop_chances:{mainhand:0.25,head:0.25,chest:0.25,offhand:0.25},DeathLootTable:"ls_trip_and_magic:entities/warrior_husk",attributes:[{id:"minecraft:spawn_reinforcements",base:0.8},{id:"minecraft:attack_damage",base:-2},{id:"minecraft:armor",base:10},{id:"minecraft:armor_toughness",base:8},{id:"minecraft:knockback_resistance",base:0.25}]}
item replace entity @s[scores={ls_tm_random=65..84}] weapon.mainhand with iron_axe
item replace entity @s[scores={ls_tm_random=65..84}] armor.head with iron_helmet
item replace entity @s[scores={ls_tm_random=65..84}] armor.chest with iron_chestplate
item replace entity @s[scores={ls_tm_random=65..84}] weapon.offhand with shield
item modify entity @s[scores={ls_tm_random=65..84}] armor.head ls_trip_and_magic:warrior_helm
item modify entity @s[scores={ls_tm_random=65..84}] weapon.offhand ls_trip_and_magic:bash_shield
tag @s[scores={ls_tm_random=65..84}] add ls_tm_trip_mobs_warrior_husk

data merge entity @s[scores={ls_tm_random=85..100}] {IsBaby:0b,attributes:[{id:"minecraft:spawn_reinforcements",base:0.5}]}
item replace entity @s[scores={ls_tm_random=85..100}] armor.head with black_banner[banner_patterns=[{"pattern":"minecraft:skull","color":"brown"},{"pattern":"minecraft:border","color":"yellow"}]]

tag @s add ls_tm_trip_firld_boss

tag @s add ls_tm_trip_mobs