tag @s add ch_tm_magic_pl


#ch_tm_fireball_display
$summon block_display ~ ~ ~ {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},block_state:{Name:"minecraft:water"},Tags:["ch_tm_waterball_display","ch_tm_magic_ball"],Passengers:[{id:"minecraft:area_effect_cloud",custom_particle:{type:"enchant"},Radius:0.5f,Owner:$(UUID)}]}
execute store result score @n[type=block_display,tag=ch_tm_magic_ball] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute anchored eyes run tp @e[tag=ch_tm_waterball_display,sort=nearest,limit=1] ^ ^ ^0.5 ~ ~

playsound item.bucket.empty player @a ~ ~ ~ 1 0.25
particle splash ~ ~ ~ 0 0 0 0.5 50 force

