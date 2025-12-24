#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.0f,0.0f,0.0f]}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,11f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,21f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,31f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,41f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,51f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=14}] run data modify entity @s text_opacity set value 204
  execute if entity @s[scores={ch_effect_vfx_timer=15}] run data modify entity @s text_opacity set value 153
  execute if entity @s[scores={ch_effect_vfx_timer=16}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,151f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=16}] run data modify entity @s text_opacity set value 51
  execute if entity @s[scores={ch_effect_vfx_timer=17}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,161f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=17}] run data modify entity @s text_opacity set value 31
  execute if entity @s[scores={ch_effect_vfx_timer=18}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,171f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}
  execute if entity @s[scores={ch_effect_vfx_timer=18}] run data modify entity @s text_opacity set value 17
  execute if entity @s[scores={ch_effect_vfx_timer=19}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,181f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}
  execute if entity @s[scores={ch_effect_vfx_timer=19}] run data modify entity @s text_opacity set value 3
  execute if entity @s[scores={ch_effect_vfx_timer=20}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,191f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}
  execute if entity @s[scores={ch_effect_vfx_timer=20}] run data modify entity @s text_opacity set value 0

 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=20..}] run kill @s