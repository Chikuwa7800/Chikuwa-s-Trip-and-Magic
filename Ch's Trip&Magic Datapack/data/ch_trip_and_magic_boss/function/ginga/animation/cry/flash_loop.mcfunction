##叫び
 #スコア加算
  scoreboard players add @s ch_tm_bosses_shout_tick 1

 #叫叫演出
  function ch_effect_temp:vfx/cry/play

 #スコアが２以上の場合、ループ停止処理
  execute if entity @s[scores={ch_tm_bosses_shout_tick=2..}] run tag @s remove ch_tm_bosses_ginga_cry
  execute if entity @s[scores={ch_tm_bosses_shout_tick=2..}] run scoreboard players reset @s ch_tm_bosses_shout_tick