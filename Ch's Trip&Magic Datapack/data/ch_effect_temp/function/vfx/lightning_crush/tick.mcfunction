#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text set value {"text":"\uE005",font:"trip_magic:vfx/asgars/lightning2",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s text set value {"text":"\uE006",font:"trip_magic:vfx/asgars/lightning2",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.75f,0f,0f],scale:[1f,1f,1f]}
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=3..}] run kill @s
