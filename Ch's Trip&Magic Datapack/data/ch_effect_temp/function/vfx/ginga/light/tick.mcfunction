#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.025f,0f],scale:[0.5f,0.5f,0.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s text_opacity set value 125
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s text_opacity set value 103
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text_opacity set value 81
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text_opacity set value 59
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s text_opacity set value 37
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text_opacity set value 15
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s text_opacity set value 0
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=10..}] run kill @s