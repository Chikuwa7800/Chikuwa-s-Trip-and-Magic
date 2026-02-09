## wet
 #ダミータイマーを増加させる
  scoreboard players add @s ch_tm_magic_wet_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ch_tm_magic_wet_tick_dummy=20..}] ch_tm_magic_wet_tick 1
  execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.020,0.051,1.000],scale:0.5} ~ ~0.5 ~ 0.25 0.5 0.25 0. 5
  execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.020,0.051,1.000],scale:0.5} ~ ~0.5 ~ 0.25 0.25 0.25 0. 5
  execute if entity @s[type=slime] run particle dust{color:[0.020,0.051,1.000],scale:0.5} ~ ~0.5 ~ 0.5 0.5 0.5 0. 5

  #ダメージ
   execute if entity @s[scores={ch_tm_magic_wet_tick=1..,ch_tm_magic_wet_tick_dummy=20..}] run function ch_trip_and_magic:magic/effect/wet/damage
   #最後のやつ
   execute if entity @s[scores={ch_tm_magic_wet_tick=..0,ch_tm_magic_wet_tick_dummy=20..}] run function ch_trip_and_magic:magic/effect/wet/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ch_tm_magic_wet_tick_dummy=20..}] ch_tm_magic_wet_tick_dummy