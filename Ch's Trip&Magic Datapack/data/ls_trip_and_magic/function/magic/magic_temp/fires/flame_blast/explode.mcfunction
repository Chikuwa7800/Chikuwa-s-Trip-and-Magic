particle explosion_emitter ~ ~ ~ 0 0 0 0. 1 force
particle smoke ~ ~ ~ 0 0 0 0.5 20 force
particle large_smoke ~ ~ ~ 0 0 0 0.5 20 force
particle poof ~ ~ ~ 0 0 0 0.5 30 force
particle enchant ~ ~ ~ 0 0 0 5.5 40 force
particle lava ~ ~ ~ 0.5 0.5 0.5 0 40 force
playsound entity.generic.explode player @a ~ ~ ~ 2 0.5
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ls_tm_blast_ball_display] ch_tm_entity_id run tag @s add ch_tm_fb_attacker
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!ch_tm_fb_attacker,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_blast_ball_display] positioned ~3 ~3 ~3 run damage @s 8 ls_trip_and_magic:magic/fire_lv2 by @n[tag=ls_tm_blast_ball_display] from @n[tag=ch_tm_fb_attacker]
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!ch_tm_fb_attacker,type=!#ls_trip_and_magic:cannot_hurt_entities,tag=!ls_tm_blast_ball_display] positioned ~3 ~3 ~3 if entity @s[tag=!ls_tm_using_shield] run function ls_trip_and_magic:magic/effect/flame/start {"time":"8"}
tag @n[tag=ch_tm_fb_attacker] remove ch_tm_fb_attacker
kill @s