#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text set value {text:"\uE000",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s text set value {"text":"\uE001",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s text set value {"text":"\uE002",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s text set value {"text":"\uE003",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text set value {"text":"\uE004",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text set value {"text":"\uE005",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s text set value {"text":"\uE006",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text set value {"text":"\uE007",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s text set value {"text":"\uE008",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s text set value {"text":"\uE009",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=11}] run data modify entity @s text set value {"text":"\uE010",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s text set value {"text":"\uE011",font:"trip_magic:vfx/ginga/explode",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=13}] run data modify entity @s text set value {"text":"\uE012",font:"trip_magic:vfx/ginga/explode",color:white}
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=14..}] run kill @s