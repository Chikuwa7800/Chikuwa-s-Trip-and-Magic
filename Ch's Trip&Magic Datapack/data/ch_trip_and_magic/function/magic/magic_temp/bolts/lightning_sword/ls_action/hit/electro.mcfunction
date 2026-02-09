execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_magic_lightning_sword_hit,tag=ch_tm_magic_lightning_sword_shot] ch_tm_entity_id run tag @s add ch_tm_ls_attacker
function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/effect_electro
execute positioned ~-3.5 ~-3.5 ~-3.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=6,dy=6,dz=6,tag=!ch_tm_ls_attacker] positioned ~3.5 ~3.5 ~3.5 run damage @s 10 ch_trip_and_magic:magic/bolts_lv3 by @n[tag=ch_tm_magic_lightning_sword_hit] from @n[tag=ch_tm_ls_attacker]
execute positioned ~-5.5 ~-5.5 ~-5.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=10,dy=10,dz=10,tag=!ch_tm_ls_attacker,tag=!ch_tm_using_shield] positioned ~5.5 ~5.5 ~5.5 run function ch_trip_and_magic:magic/effect/electro/start {"time":"10"}
tag @n[tag=ch_tm_ls_attacker] remove ch_tm_ls_attacker
data modify entity @s brightness set value {block:0,sky:0}