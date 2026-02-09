particle explosion_emitter ~ ~ ~ 0 0 0 0. 1 force
particle smoke ~ ~ ~ 0 0 0 0.5 20 force
particle large_smoke ~ ~ ~ 0 0 0 0.5 20 force
particle enchant ~ ~ ~ 0 0 0 5.5 40 force
particle lava ~ ~ ~ 0.5 0.5 0.5 0 40 force
particle flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 1.5 1.5 1.5 0 10 force
playsound item.spear.hit player @a ~ ~ ~ 5 2
playsound item.spear.attack player @a ~ ~ ~ 5 2
playsound entity.arrow.hit_player player @a ~ ~ ~ 5 1
playsound entity.generic.explode player @a ~ ~ ~ 2 0.5
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_blast_ball_display] ch_tm_entity_id run tag @s add ch_tm_fb_attacker
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!ch_tm_fb_attacker,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_blast_ball_display] positioned ~3 ~3 ~3 run damage @s 8 ch_trip_and_magic:magic/fire_lv2 by @n[tag=ch_tm_blast_ball_display] from @n[tag=ch_tm_fb_attacker]
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!ch_tm_fb_attacker,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_blast_ball_display] positioned ~3 ~3 ~3 if entity @s[tag=!ch_tm_using_shield] run function ch_trip_and_magic:magic/effect/flame/start {"time":"4"}
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ch_tm_fb_attacker,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_blast_ball_display] positioned ~0.5 ~0.5 ~0.5 run damage @s 15 ch_trip_and_magic:magic/fire_lv2_hit by @n[tag=ch_tm_blast_ball_display] from @n[tag=ch_tm_fb_attacker]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!ch_tm_fb_attacker,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_blast_ball_display] positioned ~0.5 ~0.5 ~0.5 if entity @s[tag=!ch_tm_using_shield] run function ch_trip_and_magic:magic/effect/flame/start {"time":"8"}
tag @n[tag=ch_tm_fb_attacker] remove ch_tm_fb_attacker
kill @s