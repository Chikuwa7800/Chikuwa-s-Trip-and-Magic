summon item_display ~ ~ ~ {teleport_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},Tags:["ch_tm_bosses_void_bullet"],item:{id:"white_dye","components":{item_model:"trip_magic:entity/bosses/ginga/bullet"}}}

execute anchored eyes run tp @n[tag=ch_tm_bosses_void_bullet] ^ ^ ^0.5 ~ ~
data merge entity @n[tag=ch_tm_bosses_void_bullet] {teleport_duration:3,transformation:{scale:[0.75f,0.75f,0.75f]}}
