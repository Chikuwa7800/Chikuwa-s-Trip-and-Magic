#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0.5f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,1f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,1.5f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,2f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,2.5f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,3f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,3.5f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,4f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,4.5f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,1f]}
  

 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=11..}] run kill @s