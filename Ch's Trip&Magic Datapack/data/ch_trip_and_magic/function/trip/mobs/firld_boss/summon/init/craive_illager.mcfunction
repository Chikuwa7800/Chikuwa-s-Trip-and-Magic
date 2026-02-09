data merge entity @s {IsBaby:0b,drop_chances:{mainhand:0},DeathLootTable:"ch_trip_and_magic:entities/warrior_husk",attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:armor",base:10},{id:"minecraft:armor_toughness",base:8},{id:"follow_range",base:36}]}
item replace entity @s weapon.mainhand with warped_fungus_on_a_stick
item modify entity @s weapon.mainhand ch_trip_and_magic:weapons/illager_claive/glaive_standby
tag @s add ch_tm_trip_mobs_craive_illager
tag @s add ch_tm_trip_mobs_craive_illager_glaive
function ch_trip_and_magic:set_entity_id
tag @s add ch_tm_trip_firld_boss

tag @s add ch_tm_trip_mobs