$execute as @e[tag=!ch_tm_magic_sauer_estrap,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..2.5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 10 ch_trip_and_magic:magic/nature_lv4 by @n[tag=ch_tm_magic_sauer_estrap,scores={ch_tm_entity_id=$(owner)}] from @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)}]
$execute as @e[tag=!ch_tm_magic_sauer_estrap,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..2.5,tag=!ch_tm_using_shield] unless score @s ch_tm_entity_id matches $(owner) run function ch_trip_and_magic:magic/effect/erosion/start {"time":"4"}
particle firework ~ ~ ~ 0.0 0.0 0.0 0.25 75 force
particle warped_spore ~ ~ ~ 0 0 0 0.25 100
particle spore_blossom_air ~ ~ ~ 0 0 0 0.25 10
particle flash{color:-4602507} ~ ~ ~ 0.0 0.0 0.0 1 1 force
particle crit ~ ~ ~ 1 1 1 0.125 20
particle gust ~ ~ ~ 1.25 1.25 1.25 0 10 force
particle explosion ~ ~ ~ 1.25 1.25 1.25 0 10 force
kill @s