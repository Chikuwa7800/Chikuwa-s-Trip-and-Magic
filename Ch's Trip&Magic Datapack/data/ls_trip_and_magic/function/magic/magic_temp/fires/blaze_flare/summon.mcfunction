tag @s add ls_tm_magic_pl
tag @s add ls_tm_magic_flare_cooldown


#ls_tm_fireball_display
$summon block_display ~ ~ ~ {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ls_tm_fireball_display","ls_tm_magic_ball"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"enchant"},Radius:0.5f,Owner:$(UUID)}]}
execute store result score @n[type=block_display,tag=ls_tm_magic_ball] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute anchored eyes run tp @e[tag=ls_tm_fireball_display,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~

playsound entity.zombie.infect player @a ~ ~ ~ 1 0.25
particle lava ~ ~ ~ 0 0 0 0.5 5 force

