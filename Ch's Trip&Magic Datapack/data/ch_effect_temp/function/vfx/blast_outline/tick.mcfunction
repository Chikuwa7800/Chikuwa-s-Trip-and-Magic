#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s text_opacity set value 249
  execute if entity @s[scores={ch_effect_vfx_timer=2}] run data modify entity @s text_opacity set value 243
  execute if entity @s[scores={ch_effect_vfx_timer=3}] run data modify entity @s text_opacity set value 237
  execute if entity @s[scores={ch_effect_vfx_timer=4}] run data modify entity @s text_opacity set value 231
  execute if entity @s[scores={ch_effect_vfx_timer=5}] run data modify entity @s text_opacity set value 225
  execute if entity @s[scores={ch_effect_vfx_timer=6}] run data modify entity @s text_opacity set value 219
  execute if entity @s[scores={ch_effect_vfx_timer=7}] run data modify entity @s text_opacity set value 213
  execute if entity @s[scores={ch_effect_vfx_timer=8}] run data modify entity @s text_opacity set value 207
  execute if entity @s[scores={ch_effect_vfx_timer=9}] run data modify entity @s text_opacity set value 201
  execute if entity @s[scores={ch_effect_vfx_timer=10}] run data modify entity @s text_opacity set value 195
  execute if entity @s[scores={ch_effect_vfx_timer=11}] run data modify entity @s text_opacity set value 189
  execute if entity @s[scores={ch_effect_vfx_timer=12}] run data modify entity @s text_opacity set value 183
  execute if entity @s[scores={ch_effect_vfx_timer=13}] run data modify entity @s text_opacity set value 177
  execute if entity @s[scores={ch_effect_vfx_timer=14}] run data modify entity @s text_opacity set value 171
  execute if entity @s[scores={ch_effect_vfx_timer=15}] run data modify entity @s text_opacity set value 165
  execute if entity @s[scores={ch_effect_vfx_timer=16}] run data modify entity @s text_opacity set value 159
  execute if entity @s[scores={ch_effect_vfx_timer=17}] run data modify entity @s text_opacity set value 153
  execute if entity @s[scores={ch_effect_vfx_timer=18}] run data modify entity @s text_opacity set value 147
  execute if entity @s[scores={ch_effect_vfx_timer=19}] run data modify entity @s text_opacity set value 141
  execute if entity @s[scores={ch_effect_vfx_timer=20}] run data modify entity @s text_opacity set value 135
  execute if entity @s[scores={ch_effect_vfx_timer=21}] run data modify entity @s text_opacity set value 129
  execute if entity @s[scores={ch_effect_vfx_timer=22}] run data modify entity @s text_opacity set value 123
  execute if entity @s[scores={ch_effect_vfx_timer=23}] run data modify entity @s text_opacity set value 117
  execute if entity @s[scores={ch_effect_vfx_timer=24}] run data modify entity @s text_opacity set value 111
  execute if entity @s[scores={ch_effect_vfx_timer=25}] run data modify entity @s text_opacity set value 105
  execute if entity @s[scores={ch_effect_vfx_timer=26}] run data modify entity @s text_opacity set value 99
  execute if entity @s[scores={ch_effect_vfx_timer=27}] run data modify entity @s text_opacity set value 93
  execute if entity @s[scores={ch_effect_vfx_timer=28}] run data modify entity @s text_opacity set value 87
  execute if entity @s[scores={ch_effect_vfx_timer=29}] run data modify entity @s text_opacity set value 81
  execute if entity @s[scores={ch_effect_vfx_timer=30}] run data modify entity @s text_opacity set value 75
  execute if entity @s[scores={ch_effect_vfx_timer=31}] run data modify entity @s text_opacity set value 69
  execute if entity @s[scores={ch_effect_vfx_timer=32}] run data modify entity @s text_opacity set value 63
  execute if entity @s[scores={ch_effect_vfx_timer=33}] run data modify entity @s text_opacity set value 57
  execute if entity @s[scores={ch_effect_vfx_timer=34}] run data modify entity @s text_opacity set value 51
  execute if entity @s[scores={ch_effect_vfx_timer=35}] run data modify entity @s text_opacity set value 45
  execute if entity @s[scores={ch_effect_vfx_timer=36}] run data modify entity @s text_opacity set value 39
  execute if entity @s[scores={ch_effect_vfx_timer=37}] run data modify entity @s text_opacity set value 33
  execute if entity @s[scores={ch_effect_vfx_timer=38}] run data modify entity @s text_opacity set value 27
  execute if entity @s[scores={ch_effect_vfx_timer=39}] run data modify entity @s text_opacity set value 21
  execute if entity @s[scores={ch_effect_vfx_timer=40}] run data modify entity @s text_opacity set value 15
  execute if entity @s[scores={ch_effect_vfx_timer=41}] run data modify entity @s text_opacity set value 9
  execute if entity @s[scores={ch_effect_vfx_timer=42}] run data modify entity @s text_opacity set value 3
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=43..}] run kill @s
