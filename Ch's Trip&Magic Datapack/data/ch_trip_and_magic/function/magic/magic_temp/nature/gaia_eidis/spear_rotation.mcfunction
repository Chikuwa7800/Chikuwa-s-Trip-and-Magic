summon marker ~ ~ ~ {Tags:["ch_tm_magic_gaia_eidis_score"]}
execute store result score @n[tag=ch_tm_magic_gaia_eidis_score] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute store result entity @n[tag=ch_tm_magic_gaia_eidis_score] data."owner" int 1 run scoreboard players get @s ch_tm_entity_id
execute rotated ~ ~90 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_damage with entity @n[tag=ch_tm_magic_gaia_eidis_score] data
kill @n[tag=ch_tm_magic_gaia_eidis_score]