particle block{block_state:end_portal} ~ ~ ~ 2.0 2.0 2.0 0 30
playsound trip_magic:magic.void.erebos_nova.blast player @a ~ ~ ~ 2 0
$execute as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..4.5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 16 ch_trip_and_magic:magic/void_lv5 by @n[type=block_display,scores={ch_tm_entity_id=$(owner)}] from @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)}]
$execute as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..6,tag=!ch_tm_using_shield] unless score @s ch_tm_entity_id matches $(owner) run function ch_trip_and_magic:magic/effect/abyss/start {"time":"4"}
kill @s