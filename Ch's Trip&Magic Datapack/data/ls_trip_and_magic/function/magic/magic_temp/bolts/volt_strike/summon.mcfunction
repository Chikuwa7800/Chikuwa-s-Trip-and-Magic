tag @s add ls_tm_magic_pl

#ls_tm_volt_display
$summon block_display ~ ~ ~ {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ls_tm_volt_display","ls_tm_magic_ball"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"enchant"},Radius:0.5f,Owner:$(UUID)}]}
execute store result score @n[type=block_display,tag=ls_tm_magic_ball] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute anchored eyes run tp @e[tag=ls_tm_volt_display,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~

playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
particle end_rod ~ ~1.5 ~ 0 0 0 0.1 5 force

