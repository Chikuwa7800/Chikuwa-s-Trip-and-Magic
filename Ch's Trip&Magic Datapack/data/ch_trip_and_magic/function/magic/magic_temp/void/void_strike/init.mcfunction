tag @s add ch_tm_void_ball
tag @s add ch_tm.magic_entity
execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm_strike_pl] ch_tm_entity_id
data merge entity @s {item:{id:"sculk",components:{item_model:"trip_magic:magic/void_strike"}},teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.0f,0.0f,0.0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},brightness:{sky:10,block:10},shadow_radius:1,shadow_strength:1}
execute rotated as @n[tag=ch_tm_strike_pl] run rotate @s ~ ~
