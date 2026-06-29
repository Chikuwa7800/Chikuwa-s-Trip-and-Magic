particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1 force
particle firework ~ ~ ~ 0.0 0.0 0.0 0.25 10 force
particle dust{color:10266711,scale:2} ~ ~ ~ 0.0 0.0 0.0 0.25 10
particle minecraft:noxious_gas ~ ~ ~ 0.0 0.0 0.0 0.025 10
playsound trip_magic:magic.nature.gaia_eidis.explode player @a ~ ~ ~ 1 1
$execute as @e[tag=!ch_tm_magic_gaia_eidis,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..2.5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 18 ch_trip_and_magic:magic/nature_lv5 by @n[tag=ch_tm_magic_gaia_eidis,scores={ch_tm_entity_id=$(owner)}] from @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)}]
$execute as @e[tag=!ch_tm_magic_gaia_eidis,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..2.5,tag=!ch_tm_using_shield] unless score @s ch_tm_entity_id matches $(owner) run function ch_trip_and_magic:magic/effect/erosion/start {"time":"4"}