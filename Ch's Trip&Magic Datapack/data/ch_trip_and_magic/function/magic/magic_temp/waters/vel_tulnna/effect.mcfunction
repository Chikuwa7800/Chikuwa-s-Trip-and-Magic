function ch_effect_temp:effect/vel_tulnna/start

execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players operation @e[dx=0,tag=!ch_tm_tulnna_hit,type=!#ch_trip_and_magic:mobs] ch_tm_sec_entity_id = @s ch_tm_entity_id
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,tag=!ch_tm_tulnna_hit,tag=!ch_tm_vel_tulnna_shot] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] positioned ~0.875 ~0.875 ~0.875 run particle flash{color:-8798977} ~ ~ ~ 0.0 0.0 0.0 1 1 force
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_tulnna_hit,tag=!ch_tm_vel_tulnna_shot] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] positioned ~0.875 ~0.875 ~0.875 run particle dust_color_transition{from_color:1773989,to_color:11455999,scale:1.5} ~ ~ ~ 1.25 1.25 1.25 0 20
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_tulnna_hit,tag=!ch_tm_vel_tulnna_shot] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run tag @s add ch_tm_tulnna_hit
execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[dx=0,tag=ch_tm.magic_entity,tag=!ch_tm_tulnna_hit,tag=!ch_tm_vel_tulnna_shot] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] run tag @s add ch_tm_tulnna_hit
playsound trip_magic:magic.water.vel_tulnna.near player @a[tag=!ch_tm_vel_tulnna_shot] ~ ~ ~ 1 1

execute if block ~ ~ ~ #ch_trip_and_magic:no_collision if loaded ~ ~ ~ positioned ^ ^ ^1 run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/effect
