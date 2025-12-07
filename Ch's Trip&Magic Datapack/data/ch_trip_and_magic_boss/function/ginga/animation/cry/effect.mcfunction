##叫び瞬間演出
 #音声
  playsound trip_magic:entity.ginunga.cry hostile @a ~ ~ ~ 2 1 0.0125

 #衝撃波？
execute positioned ~ ~ ~ run function ch_effect_temp:effect/small_sound_wave/start

 #叫びtag
  tag @s add ch_tm_bosses_ginga_cry