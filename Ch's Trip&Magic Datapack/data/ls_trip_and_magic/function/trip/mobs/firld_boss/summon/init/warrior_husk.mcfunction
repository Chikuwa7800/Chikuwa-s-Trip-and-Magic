data merge entity @s {IsBaby:0b,drop_chances:{mainhand:0.25,head:0.25,chest:0.25,offhand:0.25},DeathLootTable:"ls_trip_and_magic:entities/warrior_husk",attributes:[{id:"minecraft:spawn_reinforcements",base:0.8},{id:"minecraft:attack_damage",base:-2},{id:"minecraft:armor",base:10},{id:"minecraft:armor_toughness",base:8},{id:"minecraft:knockback_resistance",base:0.25}]}
item replace entity @s weapon.mainhand with iron_axe
item replace entity @s armor.head with iron_helmet
item replace entity @s armor.chest with iron_chestplate
item replace entity @s weapon.offhand with shield
item modify entity @s armor.head ls_trip_and_magic:warrior_helm
item modify entity @s weapon.offhand ls_trip_and_magic:bash_shield
tag @s add ls_tm_trip_mobs_warrior_husk