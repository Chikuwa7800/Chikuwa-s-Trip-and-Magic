scoreboard players add @s ls_tm_magic_lightsword_tick_hit 1

function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/effect_hitting
execute if score @s ls_tm_magic_lightsword_tick_hit matches 10 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/effect_electro_prep
execute if score @s ls_tm_magic_lightsword_tick_hit matches 30 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/hit/electro
execute if score @s ls_tm_magic_lightsword_tick_hit matches 60 run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/ls_action/hit/remove