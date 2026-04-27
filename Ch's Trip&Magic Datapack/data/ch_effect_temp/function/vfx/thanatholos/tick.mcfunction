#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation.scale set value [3f,3,3f]
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s transformation.scale set value [3f,3f,2.75f]
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s transformation.scale set value [3f,3f,2.5f]
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s transformation.scale set value [3f,3f,2.25f]
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s transformation.scale set value [3f,3f,2f]
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s transformation.scale set value [3f,3f,1.75f]
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s transformation.scale set value [3f,3f,1.5f]
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s transformation.scale set value [3f,3f,1.25f]
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s transformation.scale set value [3f,3f,1f]
  execute if entity @s[scores={ch_effect_vfx_timer=11}] run data modify entity @s transformation.scale set value [3f,3f,0.75f]
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s transformation.scale set value [3f,3f,0.5f]
  execute if entity @s[scores={ch_effect_vfx_timer=13}] run data modify entity @s transformation.scale set value [3f,3f,0.25f]

 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=14..}] run kill @s