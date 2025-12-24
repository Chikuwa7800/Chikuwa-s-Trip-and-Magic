## abyss
 #ダミータイマーを増加させる
  scoreboard players add @s ls_tm_magic_abyss_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ls_tm_magic_abyss_tick_dummy=10..}] ls_tm_magic_abyss_tick 1

  #ダメージ
   execute if entity @s[scores={ls_tm_magic_abyss_tick=1..,ls_tm_magic_abyss_tick_dummy=10..,ls_trip_magic_health=4..}] run function ls_trip_and_magic:magic/effect/abyss/damage
   #ダメージ(最後のやつ)
   execute if entity @s[scores={ls_tm_magic_abyss_tick=..0,ls_tm_magic_abyss_tick_dummy=10..}] run function ls_trip_and_magic:magic/effect/abyss/last
   execute if entity @s[scores={ls_trip_magic_health=..4,ls_tm_magic_abyss_tick_dummy=10..}] run function ls_trip_and_magic:magic/effect/abyss/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ls_tm_magic_abyss_tick_dummy=10..}] ls_tm_magic_abyss_tick_dummy