## erosion
 #ダミータイマーを増加させる
  scoreboard players add @s ch_tm_magic_erosion_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ch_tm_magic_erosion_tick_dummy=10..}] ch_tm_magic_erosion_tick 1
  execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.443,0.639,0.043],scale:0.5} ~ ~1.25 ~ 0.25 0.5 0.25 0. 10
  execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.443,0.639,0.043],scale:0.5} ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
  execute if entity @s[type=slime] run particle dust{color:[0.443,0.639,0.043],scale:0.5} ~ ~1.25 ~ 0.5 0.5 0.5 0. 10
  #ダメージ
   execute if entity @s[scores={ch_tm_magic_erosion_tick=1..,ch_tm_magic_erosion_tick_dummy=10..}] run function ch_trip_and_magic:magic/effect/erosion/damage
   execute if entity @s[scores={ch_tm_magic_erosion_tick=1..,ch_tm_magic_erosion_tick_dummy=10..}] if block ~ ~ ~ fire run function ch_trip_and_magic:magic/effect/erosion/damage
   execute if entity @s[scores={ch_tm_magic_erosion_tick=1..,ch_tm_magic_erosion_tick_dummy=10..}] if block ~ ~ ~ soul_fire run function ch_trip_and_magic:magic/effect/erosion/damage
   execute if entity @s[scores={ch_tm_magic_erosion_tick=1..,ch_tm_magic_erosion_tick_dummy=10..}] if block ~ ~ ~ lava run function ch_trip_and_magic:magic/effect/erosion/damage
   #最後
   execute if entity @s[scores={ch_tm_magic_erosion_tick=..0,ch_tm_magic_erosion_tick_dummy=10..}] run function ch_trip_and_magic:magic/effect/erosion/last
   execute if entity @s[tag=ch_tm_magic_flame_tick] run function ch_trip_and_magic:magic/effect/erosion/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ch_tm_magic_erosion_tick_dummy=10..}] ch_tm_magic_erosion_tick_dummy