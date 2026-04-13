tag @s add ch_tm_magic_pl

#ch_tm_volt_display
execute anchored eyes run summon block_display ^ ^ ^0.5 {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ch_tm_volt_display","ch_tm_magic_ball"]}
execute store result score @n[type=block_display,tag=ch_tm_magic_ball] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute anchored eyes run rotate @e[tag=ch_tm_volt_display,sort=nearest,limit=1] facing ^ ^ ^1000

playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1
particle end_rod ~ ~1.5 ~ 0 0 0 0.1 5 force

