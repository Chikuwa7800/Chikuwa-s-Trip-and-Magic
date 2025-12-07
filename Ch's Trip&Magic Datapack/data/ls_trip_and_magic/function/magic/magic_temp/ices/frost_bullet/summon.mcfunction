tag @s add ls_tm_magic_pl
tag @s add ls_tm_magic_frost_cooldown


#ls_tm_fireball_display
$summon block_display ~ ~ ~ {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ls_tm_iceyball_display","ls_tm_magic_ball"],Passengers:[{id:"minecraft:area_effect_cloud",Owner:$(UUID),custom_particle:{type:"enchant"},Radius:0.5f}]}

execute anchored eyes run tp @e[tag=ls_tm_iceyball_display,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~

playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 1.5
particle snowflake ~ ~ ~ 0 0 0 0.1 10 force

