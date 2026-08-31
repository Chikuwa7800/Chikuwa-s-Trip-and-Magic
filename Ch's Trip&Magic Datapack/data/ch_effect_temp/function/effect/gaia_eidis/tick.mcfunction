#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,0.4f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,0.8f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,1.2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,1.6f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2.0f,2f]}
  
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=15..}] run particle block{block_state:oak_log} ^ ^0.5 ^ 0.5 0.5 0.5 0 20 force
  execute if entity @s[scores={ch_effect_vfx_timer=15..}] run particle block{block_state:oak_log} ^ ^1.5 ^ 0.35 0.35 0.35 0 17 force
  execute if entity @s[scores={ch_effect_vfx_timer=15..}] run particle block{block_state:oak_log} ^ ^2.5 ^ 0.25 0.25 0.25 0 15 force
  execute if entity @s[scores={ch_effect_vfx_timer=15..}] run particle block{block_state:oak_log} ^ ^3.5 ^ 0.125 0.125 0.125 0 12 force
  execute if entity @s[scores={ch_effect_vfx_timer=15..}] run kill @s