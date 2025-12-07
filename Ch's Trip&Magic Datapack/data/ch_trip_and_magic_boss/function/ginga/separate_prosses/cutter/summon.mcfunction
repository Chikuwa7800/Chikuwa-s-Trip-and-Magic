summon item_display ~ ~ ~ {teleport_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},Tags:["ch_tm_bosses_cutter"],item:{id:"white_dye","components":{item_model:"trip_magic:entity/bosses/ginga/cutter"}}}

execute anchored eyes run tp @n[tag=ch_tm_bosses_cutter] ^ ^ ^0.5 ~ ~
data merge entity @n[tag=ch_tm_bosses_cutter] {teleport_duration:3,transformation:{scale:[1f,1f,1f]}}
