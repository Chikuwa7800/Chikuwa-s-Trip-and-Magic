tag @s add ch_tm_chalch_veil
tag @s add ch_tm.magic_entity
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_chalch_veil_pl] ch_tm_entity_id
data merge entity @s {text:{text:"\uE002",font:"trip_magic:vfx/magic",color:white},default_background:false,billboard:center,alignment:"center",background:16711680,brightness:{block:5,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0f,0f],scale:[2f,2f,2f]},teleport_duration:1}
