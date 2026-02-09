execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ch_tm_magic_lightsword_tick matches 1..40 run tp @s ^ ^ ^4

execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ch_tm_magic_lightsword_tick matches 41..50 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move/second

execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ch_tm_magic_lightsword_tick matches 51..60 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move/third

execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ch_tm_magic_lightsword_tick matches 61.. run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move/fourth

function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/effect_moving

execute positioned ~-5.5 ~-5.5 ~-5.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,dx=10,dy=10,dz=10] positioned ~5.5 ~5.5 ~5.5 run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/near