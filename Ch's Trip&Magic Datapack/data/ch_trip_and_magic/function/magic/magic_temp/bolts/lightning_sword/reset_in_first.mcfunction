tag @s remove ch_magic_lightning_sword_pl
scoreboard players reset @s ch_tm_magic_lightsword_tick
$execute as @e[type=item_display,tag=ch_tm_magic_lightning_sword] if score @s ch_tm_entity_id matches $(owner) run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/hit/remove
scoreboard players remove @s ch_tm_magic_casting 1