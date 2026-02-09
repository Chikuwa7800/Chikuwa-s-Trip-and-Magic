#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text set value {text:"\uE000",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s text set value {"text":"\uE001",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=20}] run data modify entity @s text set value {"text":"\uE002",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=30}] run data modify entity @s text set value {"text":"\uE003",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=40}] run data modify entity @s text set value {"text":"\uE004",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=50}] run data modify entity @s text set value {"text":"\uE005",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=60}] run data modify entity @s text set value {"text":"\uE006",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=70}] run data modify entity @s text set value {"text":"\uE007",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=80}] run data modify entity @s text set value {"text":"\uE008",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=90}] run data modify entity @s text set value {"text":"\uE009",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=100}] run data modify entity @s text set value {"text":"\uE010",font:"trip_magic:vfx/ginga/big_smoke",color:white}
  execute if entity @s[scores={ch_effect_vfx_timer=110}] run data modify entity @s text set value {"text":"\uE011",font:"trip_magic:vfx/ginga/big_smoke",color:white}

#煙の上昇
execute if entity @s[scores={ch_effect_vfx_timer=1..119}] if block ~ ~0.0125 ~ #ch_trip_and_magic:no_collision run tp @s ~ ~0.025 ~

 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=120..}] run kill @s