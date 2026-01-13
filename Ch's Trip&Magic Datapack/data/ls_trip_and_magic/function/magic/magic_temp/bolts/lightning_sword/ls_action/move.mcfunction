execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ls_tm_magic_lightsword_tick matches 1..40 run tp @s ^ ^ ^4

execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ls_tm_magic_lightsword_tick matches 41..50 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move/second

execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ls_tm_magic_lightsword_tick matches 51..60 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move/third

execute unless entity @s[tag=ch_tm_magic_lightning_sword_hit] if score @s ls_tm_magic_lightsword_tick matches 61.. run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move/fourth

function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/effect_moving