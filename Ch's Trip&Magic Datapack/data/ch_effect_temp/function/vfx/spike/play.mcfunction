##氷魔法陣エフェクト
 #召喚
  summon text_display ^1 ^ ^1 {text:{text:"\uE005",font:"trip_magic:vfx/magic",color:"#d1fdff"},Tags:["ch.effect","ch.effect.spike","ch.effect.spike.front","ch.effect.start"],default_background:false,alignment:"center",background:16711680,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.01f,-0.05f,0f],scale:[0f,0f,0f]},interpolation_duration:10,teleport_duration:1}
  summon text_display ^1 ^ ^1 {text:{text:"\uE005",font:"trip_magic:vfx/magic",color:"#d1fdff"},Tags:["ch.effect","ch.effect.spike","ch.effect.spike.back","ch.effect.start"],default_background:false,alignment:"center",background:16711680,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[-0.99f,-0.05f,0f],scale:[0f,0f,0f]},interpolation_duration:10,teleport_duration:1}
  tp @n[tag=ch.effect.spike.front] ^1 ^ ^1 ~ ~
  tp @n[tag=ch.effect.spike.back] ^1 ^ ^1 ~ ~
  execute positioned ^1 ^ ^1 store result entity @n[tag=ch.effect.spike.front] data."owner" int 1 run scoreboard players get @s ch_tm_entity_id
  execute positioned ^1 ^ ^1 store result entity @n[tag=ch.effect.spike.back] data."owner" int 1 run scoreboard players get @s ch_tm_entity_id
  execute positioned ^1 ^ ^1 store result score @n[tag=ch.effect.spike.front] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
  execute positioned ^1 ^ ^1 store result score @n[tag=ch.effect.spike.back] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id