#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text_opacity set value 230
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text_opacity set value 205
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s text_opacity set value 180
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text_opacity set value 155
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s text_opacity set value 130
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s text_opacity set value 105
  execute if entity @s[scores={ch_effect_vfx_timer=11}] run data modify entity @s text_opacity set value 80
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s text_opacity set value 55
  execute if entity @s[scores={ch_effect_vfx_timer=13}] run data modify entity @s text_opacity set value 30
  execute if entity @s[scores={ch_effect_vfx_timer=14}] run data modify entity @s text_opacity set value 5
  execute if entity @s[scores={ch_effect_vfx_timer=15}] run data modify entity @s text_opacity set value 0

 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=15..}] run kill @s