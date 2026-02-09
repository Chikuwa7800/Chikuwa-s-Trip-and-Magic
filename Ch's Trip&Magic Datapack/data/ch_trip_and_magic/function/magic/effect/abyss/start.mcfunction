##abyss
#> function ch_trip_and_magic:magic/effect/abyss/start {"time":""}
 # スコアボードに効果時間代入
  $scoreboard players set @s ch_tm_magic_abyss_tick $(time)
  scoreboard players set @s ch_tm_magic_abyss_tick_dummy 0
 # tag付け
  tag @s add ch_tm_magic_abyss_tick
