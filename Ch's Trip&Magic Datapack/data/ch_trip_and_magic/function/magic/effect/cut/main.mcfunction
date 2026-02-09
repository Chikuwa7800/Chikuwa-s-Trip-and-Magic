## cut
 #ダミータイマーを増加させる
  scoreboard players add @s ch_tm_magic_cut_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ch_tm_magic_cut_tick_dummy=20..}] ch_tm_magic_cut_tick 1

execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.141,0.000,0.000],scale:1} ~ ~0.5 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.141,0.000,0.000],scale:1} ~ ~0.5 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.141,0.000,0.000],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 0. 10
  #ダメージ
   execute if entity @s[scores={ch_tm_magic_cut_tick=1..,ch_tm_magic_cut_tick_dummy=20..},predicate=!ch_trip_and_magic:acshident/sneaks] run function ch_trip_and_magic:magic/effect/cut/damage
   #ダメージ(最後のやつ)
   execute if entity @s[scores={ch_tm_magic_cut_tick=..0,ch_tm_magic_cut_tick_dummy=20..}] run function ch_trip_and_magic:magic/effect/cut/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ch_tm_magic_cut_tick_dummy=20..}] ch_tm_magic_cut_tick_dummy