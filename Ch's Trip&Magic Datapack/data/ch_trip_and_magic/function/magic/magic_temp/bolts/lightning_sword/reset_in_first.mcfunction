execute as @e[tag=ch_tm_magic_lightning_sword,tag=!ch_tm_magic_lightning_sword_shot] if score @s ch_tm_entity_id = @n[scores={ls_trip_magic_death=1..},tag=ls_magic_lightning_sword_pl] ch_tm_entity_id at @s run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/hit/remove

tag @s remove ls_magic_lightning_sword_pl
scoreboard players reset @s ch_tm_magic_lightsword_tick
scoreboard players remove @s ch_tm_magic_casting 1