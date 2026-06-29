execute summon marker run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/init
execute store result score @n[tag=ch_tm_magic_gaia_eidis] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute store result entity @n[tag=ch_tm_magic_gaia_eidis] data."owner" int 1 run scoreboard players get @s ch_tm_entity_id
rotate @n[tag=ch_tm_magic_gaia_eidis] ~ 0