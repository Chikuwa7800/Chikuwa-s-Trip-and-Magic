##ls_tm_abyss_display
scoreboard players add @s ls_tm_tick 1
particle sculk_soul ~ ~ ~ 0.1 0.1 0.1 0. 2 force
particle dust{color:[0.161,0.055,0.188],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.5 10
particle dust{color:[0.322,0.11,0.373],scale:2} ~ ~ ~ 0 0 0 0.2 10
particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0. 10 force

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,tag=!ls_tm_magic_pl,type=!#ls_trip_and_magic:mobs,tag=!ls_tm_abyss_display] positioned ~0.5 ~0.5 ~0.5 run function ls_trip_and_magic:magic/magic_temp/void/abyss_whisper/abyss
execute if entity @s[scores={ls_tm_tick=300..}] run function ls_trip_and_magic:magic/magic_temp/void/abyss_whisper/abyss
execute unless block ^ ^ ^ #ls_trip_and_magic:no_collision run function ls_trip_and_magic:magic/magic_temp/void/abyss_whisper/abyss

tp @s ^ ^ ^0.45