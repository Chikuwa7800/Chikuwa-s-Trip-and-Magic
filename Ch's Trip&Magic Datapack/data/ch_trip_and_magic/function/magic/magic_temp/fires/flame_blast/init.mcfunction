data merge entity @s {block_state:{Name:"minecraft:magma_block"},Tags:["ch_tm_blast_ball_display","ch_tm.magic_entity"],teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.0f,0.0f,0.0f,1f],translation:[-0.375f,-0.375f,-0.375f],scale:[0.75f,0.75f,0.75f]},HasVisualFire:1b}
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_blast_pl] ch_tm_entity_id
tp @s ^ ^ ^1.5
execute rotated as @n[tag=ch_tm_blast_pl] run rotate @s ~ ~