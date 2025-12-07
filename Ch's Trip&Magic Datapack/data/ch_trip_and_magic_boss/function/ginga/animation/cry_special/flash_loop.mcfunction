##必殺技前叫び
 #スコア加算
scoreboard players add @s ch_tm_bosses_shout_tick 1

 #叫叫演出
  function ch_effect_temp:vfx/cry/play

 #スコアが７以上の場合、ループ停止処理
execute if entity @s[scores={ch_tm_bosses_shout_tick=7..}] run tag @s remove ch_tm_bosses_ginga_cry_special
execute if entity @s[scores={ch_tm_bosses_shout_tick=7..}] run scoreboard players reset @s ch_tm_bosses_shout_tick