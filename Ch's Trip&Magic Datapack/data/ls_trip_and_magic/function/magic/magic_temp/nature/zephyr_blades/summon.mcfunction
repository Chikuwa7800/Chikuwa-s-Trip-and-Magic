tag @s add ls_tm_magic_pl
tag @s add ls_tm_magic_zephyr_cooldown


#ls_tm_zephyr_display
summon block_display ~ ~ ~ {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ls_tm_wind_display","ls_tm_magic_ball"]}

execute anchored eyes run tp @e[tag=ls_tm_wind_display,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~

playsound item.trident.riptide_1 player @a ~ ~ ~ 1 1
playsound item.trident.riptide_2 player @a ~ ~ ~ 1 1
particle poof ~ ~ ~ 0 0 0 0.5 10 force
particle spore_blossom_air ~ ~1 ~ 0 0 0 0.5 10 force

