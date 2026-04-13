particle explosion_emitter ~ ~ ~ 0 0 0 0. 1 force
particle smoke ~ ~ ~ 0 0 0 0.5 20 force
particle large_smoke ~ ~ ~ 0 0 0 0.5 20 force
particle poof ~ ~ ~ 0 0 0 0.5 30 force
particle enchant ~ ~ ~ 0 0 0 5.5 40 force
particle dragon_breath ~ ~ ~ 0 0 0 0.25 50 force
playsound entity.generic.explode player @a ~ ~ ~ 2 0.75
execute if block ~ ~ ~ #ch_trip_and_magic:no_collision run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:10,Radius:2.5f,RadiusPerTick:0.01f,RadiusOnUse:0.01f,Duration:200,custom_particle:{type:dragon_breath,power:1.0},potion_duration_scale:1f,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:1,duration:200}]}}
execute unless block ~ ~ ~ #ch_trip_and_magic:no_collision run summon area_effect_cloud ~ ~1.1 ~ {ReapplicationDelay:10,Radius:2.5f,RadiusPerTick:0.01f,RadiusOnUse:0.01f,Duration:200,custom_particle:{type:dragon_breath,power:1.0},potion_duration_scale:1f,potion_contents:{custom_effects:[{id:"minecraft:wither",amplifier:1,duration:200}]}}
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_void_ball] ch_tm_entity_id run tag @s add ch_tm_vos_attacker
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!ch_tm_vos_attacker,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_void_ball] positioned ~3 ~3 ~3 run damage @s 8 ch_trip_and_magic:magic/void_lv3 by @n[tag=ch_tm_void_ball] from @n[tag=ch_tm_vos_attacker]
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!ch_tm_vos_attacker,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_void_ball] positioned ~3 ~3 ~3 if entity @s[tag=!ch_tm_using_shield] run function ch_trip_and_magic:magic/effect/abyss/start {"time":"4"}
tag @n[tag=ch_tm_vos_attacker] remove ch_tm_vos_attacker
kill @s
