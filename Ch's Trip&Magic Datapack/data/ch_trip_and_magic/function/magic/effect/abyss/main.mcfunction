## abyss
 #ダミータイマーを増加させる
  scoreboard players add @s ch_tm_magic_abyss_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ch_tm_magic_abyss_tick_dummy=10..}] ch_tm_magic_abyss_tick 1

  #ダメージ
   execute if entity @s[scores={ch_tm_magic_abyss_tick=1..,ch_tm_magic_abyss_tick_dummy=10..,ls_trip_magic_health=4..}] run function ch_trip_and_magic:magic/effect/abyss/damage
   #ダメージ(最後のやつ)
   execute if entity @s[scores={ch_tm_magic_abyss_tick=..0,ch_tm_magic_abyss_tick_dummy=10..}] run function ch_trip_and_magic:magic/effect/abyss/last
   execute if entity @s[scores={ls_trip_magic_health=..4,ch_tm_magic_abyss_tick_dummy=10..}] run function ch_trip_and_magic:magic/effect/abyss/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ch_tm_magic_abyss_tick_dummy=10..}] ch_tm_magic_abyss_tick_dummy