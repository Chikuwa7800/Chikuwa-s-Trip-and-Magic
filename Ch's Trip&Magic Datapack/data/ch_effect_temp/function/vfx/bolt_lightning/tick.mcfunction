#エフェクト
particle minecraft:cloud ~ ~12.5 ~ 1 0.25 1 0 20 force

#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text set value {"text":"\uE000",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s text set value {"text":"\uE001",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s text set value {"text":"\uE004",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s text set value {"text":"\uE005",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text set value {"text":"\uE006",font:"trip_magic:vfx/asgars/lightning",color:white}


  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text set value {"text":"\uE007",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.75f,0f,0f],scale:[1f,1f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text set value {"text":"\uE008",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s text set value {"text":"\uE009",font:"trip_magic:vfx/asgars/lightning",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2f,0f,0f],scale:[1f,1f,1f]}
  
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s text set value {"text":"\uE000",font:"trip_magic:vfx/asgars/lightning2",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.85f,0f,0f],scale:[1f,1f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=17}] run data modify entity @s text set value {"text":"\uE001",font:"trip_magic:vfx/asgars/lightning2",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=17}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-3f,0f,0f],scale:[1f,1f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=22}] run data modify entity @s text set value {"text":"\uE002",font:"trip_magic:vfx/asgars/lightning2",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=27}] run data modify entity @s text set value {"text":"\uE003",font:"trip_magic:vfx/asgars/lightning2",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=27}] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-3f,0f,0f],scale:[1f,1f,1f]}
  execute if entity @s[scores={ch_effect_vfx_timer=32}] run data modify entity @s text set value {"text":"\uE004",font:"trip_magic:vfx/asgars/lightning2",color:white}
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=34..}] run kill @s