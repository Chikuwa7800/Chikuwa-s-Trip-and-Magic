#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4.25f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text set value {"text":"\uE001",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.35f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s text set value {"text":"\uE002",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.85f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s text set value {"text":"\uE003",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s text set value {"text":"\uE004",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text set value {"text":"\uE005",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text set value {"text":"\uE006",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text set value {"text":"\uE007",font:"trip_magic:vfx/blast",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=28}] run data modify entity @s interpolation_duration set value 1
  execute if entity @s[scores={ch_effect_vfx_timer=28}] run data modify entity @s text_opacity set value 249
  execute if entity @s[scores={ch_effect_vfx_timer=29}] run data modify entity @s text_opacity set value 243
  execute if entity @s[scores={ch_effect_vfx_timer=30}] run data modify entity @s text_opacity set value 237
  execute if entity @s[scores={ch_effect_vfx_timer=31}] run data modify entity @s text_opacity set value 231
  execute if entity @s[scores={ch_effect_vfx_timer=32}] run data modify entity @s text_opacity set value 225
  execute if entity @s[scores={ch_effect_vfx_timer=33}] run data modify entity @s text_opacity set value 219
  execute if entity @s[scores={ch_effect_vfx_timer=34}] run data modify entity @s text_opacity set value 213
  execute if entity @s[scores={ch_effect_vfx_timer=35}] run data modify entity @s text_opacity set value 207
  execute if entity @s[scores={ch_effect_vfx_timer=36}] run data modify entity @s text_opacity set value 201
  execute if entity @s[scores={ch_effect_vfx_timer=37}] run data modify entity @s text_opacity set value 195
  execute if entity @s[scores={ch_effect_vfx_timer=38}] run data modify entity @s text_opacity set value 189
  execute if entity @s[scores={ch_effect_vfx_timer=39}] run data modify entity @s text_opacity set value 183
  execute if entity @s[scores={ch_effect_vfx_timer=40}] run data modify entity @s text_opacity set value 177
  execute if entity @s[scores={ch_effect_vfx_timer=41}] run data modify entity @s text_opacity set value 171
  execute if entity @s[scores={ch_effect_vfx_timer=42}] run data modify entity @s text_opacity set value 165
  execute if entity @s[scores={ch_effect_vfx_timer=43}] run data modify entity @s text_opacity set value 159
  execute if entity @s[scores={ch_effect_vfx_timer=44}] run data modify entity @s text_opacity set value 153
  execute if entity @s[scores={ch_effect_vfx_timer=45}] run data modify entity @s text_opacity set value 147
  execute if entity @s[scores={ch_effect_vfx_timer=46}] run data modify entity @s text_opacity set value 141
  execute if entity @s[scores={ch_effect_vfx_timer=47}] run data modify entity @s text_opacity set value 135
  execute if entity @s[scores={ch_effect_vfx_timer=48}] run data modify entity @s text_opacity set value 129
  execute if entity @s[scores={ch_effect_vfx_timer=49}] run data modify entity @s text_opacity set value 123
  execute if entity @s[scores={ch_effect_vfx_timer=50}] run data modify entity @s text_opacity set value 117
  execute if entity @s[scores={ch_effect_vfx_timer=51}] run data modify entity @s text_opacity set value 111
  execute if entity @s[scores={ch_effect_vfx_timer=52}] run data modify entity @s text_opacity set value 105
  execute if entity @s[scores={ch_effect_vfx_timer=53}] run data modify entity @s text_opacity set value 99
  execute if entity @s[scores={ch_effect_vfx_timer=54}] run data modify entity @s text_opacity set value 93
  execute if entity @s[scores={ch_effect_vfx_timer=55}] run data modify entity @s text_opacity set value 87
  execute if entity @s[scores={ch_effect_vfx_timer=56}] run data modify entity @s text_opacity set value 81
  execute if entity @s[scores={ch_effect_vfx_timer=57}] run data modify entity @s text_opacity set value 75
  execute if entity @s[scores={ch_effect_vfx_timer=58}] run data modify entity @s text_opacity set value 69
  execute if entity @s[scores={ch_effect_vfx_timer=59}] run data modify entity @s text_opacity set value 63
  execute if entity @s[scores={ch_effect_vfx_timer=60}] run data modify entity @s text_opacity set value 57
  execute if entity @s[scores={ch_effect_vfx_timer=61}] run data modify entity @s text_opacity set value 51
  execute if entity @s[scores={ch_effect_vfx_timer=62}] run data modify entity @s text_opacity set value 45
  execute if entity @s[scores={ch_effect_vfx_timer=63}] run data modify entity @s text_opacity set value 39
  execute if entity @s[scores={ch_effect_vfx_timer=64}] run data modify entity @s text_opacity set value 33
  execute if entity @s[scores={ch_effect_vfx_timer=65}] run data modify entity @s text_opacity set value 27
  execute if entity @s[scores={ch_effect_vfx_timer=66}] run data modify entity @s text_opacity set value 21
  execute if entity @s[scores={ch_effect_vfx_timer=67}] run data modify entity @s text_opacity set value 15
  execute if entity @s[scores={ch_effect_vfx_timer=68}] run data modify entity @s text_opacity set value 9
  execute if entity @s[scores={ch_effect_vfx_timer=69}] run data modify entity @s text_opacity set value 3
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=70..}] run kill @s
