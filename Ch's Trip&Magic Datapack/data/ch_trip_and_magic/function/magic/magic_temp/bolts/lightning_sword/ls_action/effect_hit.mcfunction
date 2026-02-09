particle end_rod ^ ^ ^1 1 1 1 0.1 5 force
particle electric_spark ^ ^ ^1 1 1 1 0 10 force
playsound item.trident.riptide_3 player @a ~ ~ ~ 3 0.75

execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_magic_lightning_sword_hit,tag=ch_tm_magic_lightning_sword_shot] ch_tm_entity_id run tag @s add ch_tm_ls_attacker
execute positioned ~-3 ~-3 ~-3 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=5,dy=5,dz=5,tag=!ch_tm_ls_attacker,tag=!ch_tm_using_shield] positioned ~3 ~3 ~3 run function ch_trip_and_magic:magic/effect/electro/start {"time":"5"}
tag @n[tag=ch_tm_ls_attacker] remove ch_tm_ls_attacker