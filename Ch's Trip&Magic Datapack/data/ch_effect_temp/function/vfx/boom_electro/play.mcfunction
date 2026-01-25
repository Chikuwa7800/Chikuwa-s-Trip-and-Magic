##雷衝撃波エフェクト
 #召喚
  summon text_display ~ ~ ~ {text:{"text":"\uE000","font":"trip_magic:vfx/boom","color":"aqua"},Tags:["ch.effect.boom.electro","ch.effect.boom.electro.front"],default_background:false,alignment:"center",background:16711680,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]}}
  summon text_display ~ ~ ~ {text:{"text":"\uE000","font":"trip_magic:vfx/boom","color":"aqua"},Tags:["ch.effect.boom.electro","ch.effect.boom.electro.back"],default_background:false,alignment:"center",background:16711680,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]}}
  rotate @n[tag=ch.effect.boom.electro.front] ~ ~
  rotate @n[tag=ch.effect.boom.electro.back] ~ ~
