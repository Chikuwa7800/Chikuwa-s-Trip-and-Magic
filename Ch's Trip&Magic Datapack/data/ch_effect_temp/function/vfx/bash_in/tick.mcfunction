#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text_opacity set value 255
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s text_opacity set value 230
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s text_opacity set value 205
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s text_opacity set value 180
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text_opacity set value 155
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text_opacity set value 130
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s text_opacity set value 105
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text_opacity set value 80
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s text_opacity set value 55
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s text_opacity set value 30
  execute if entity @s[scores={ch_effect_vfx_timer=11}] run data modify entity @s text_opacity set value 5
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s text_opacity set value 0

 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=13..}] run kill @s