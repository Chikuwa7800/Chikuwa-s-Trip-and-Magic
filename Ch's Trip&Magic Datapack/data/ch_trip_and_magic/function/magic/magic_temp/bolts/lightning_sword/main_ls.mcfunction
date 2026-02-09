scoreboard players add @s[tag=!ch_tm_magic_lightning_sword_hit,tag=ch_tm_magic_lightning_sword_shot] ch_tm_magic_lightsword_tick 1

execute if entity @s[tag=!ch_tm_magic_lightning_sword_hit] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/detect_hit_terrain

execute if entity @s[tag=!ch_tm_magic_lightning_sword_hit] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/move

execute if entity @s[tag=!ch_tm_magic_lightning_sword_hit] if score @s ch_tm_magic_lightsword_tick matches 600.. run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/hit/remove

execute if entity @s[tag=ch_tm_magic_lightning_sword_hit] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/hitted
