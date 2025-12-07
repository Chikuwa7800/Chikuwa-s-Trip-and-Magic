##バッシュ内側エフェクト
 #召喚
  summon text_display ^-0.525 ^ ^ {text:{text:"\uE004",font:"trip_magic:vfx/others",color:white},Tags:["ch.effect.bash_in","ch.effect.bash_in.front"],default_background:false,alignment:"center",background:16711680,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text_opacity:0}
  summon text_display ^0.525 ^ ^ {text:{text:"\uE004",font:"trip_magic:vfx/others",color:white},Tags:["ch.effect.bash_in","ch.effect.bash_in.back"],default_background:false,alignment:"center",background:16711680,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text_opacity:0}
  tp @n[tag=ch.effect.bash_in.front] ^-0.525 ^ ^ ~ ~
  tp @n[tag=ch.effect.bash_in.back] ^0.525 ^ ^ ~ ~
