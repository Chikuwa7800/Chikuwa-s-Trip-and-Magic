tag @s add ls_tm_magic_pl
tag @s add ls_tm_magic_abyss_cooldown


#ls_tm_abyss_display
$summon block_display ~ ~ ~ {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ls_tm_abyss_display","ls_tm_magic_ball"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"enchant"},Radius:0.5f,Owner:$(UUID)}]}

execute anchored eyes run tp @e[tag=ls_tm_abyss_display,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~

playsound block.sculk_sensor.clicking player @a ~ ~ ~ 1 1.5
playsound entity.ender_eye.death player @a ~ ~ ~ 1 1
playsound entity.enderman.teleport player @a ~ ~ ~ 1 1
particle dragon_breath ~ ~2 ~ 0.2 0.2 0.2 0.1 50 force
particle enchanted_hit ~ ~2 ~ 0.3 0.3 0.3 0. 10 force

