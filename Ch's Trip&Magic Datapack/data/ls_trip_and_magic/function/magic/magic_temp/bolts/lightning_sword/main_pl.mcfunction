
scoreboard players add @s ls_tm_magic_lightsword_tick 1
execute if score @s ls_tm_magic_lightsword_tick matches 1 anchored eyes positioned ^2 ^ ^-1 summon item_display run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/tag/1
execute if score @s ls_tm_magic_lightsword_tick matches 3 anchored eyes positioned ^1 ^1 ^-1 summon item_display run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/tag/2
execute if score @s ls_tm_magic_lightsword_tick matches 5 anchored eyes positioned ^ ^2 ^-1 summon item_display run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/tag/3
execute if score @s ls_tm_magic_lightsword_tick matches 7 anchored eyes positioned ^-1 ^1 ^-1 summon item_display run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/tag/4
execute if score @s ls_tm_magic_lightsword_tick matches 9 anchored eyes positioned ^-2 ^ ^-1 summon item_display run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/tag/5
execute if score @s ls_tm_magic_lightsword_tick matches 1..38 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/rotate
execute if score @s ls_tm_magic_lightsword_tick matches 1..38 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/tp_to_user
execute if score @s ls_tm_magic_lightsword_tick matches 19 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/prep_shot
execute if score @s ls_tm_magic_lightsword_tick matches 39 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/shot
execute if score @s ls_tm_magic_lightsword_tick matches 39 run tag @s remove ls_magic_lightning_sword_pl
execute if score @s ls_tm_magic_lightsword_tick matches 39 run scoreboard players reset @s ls_tm_magic_lightsword_tick