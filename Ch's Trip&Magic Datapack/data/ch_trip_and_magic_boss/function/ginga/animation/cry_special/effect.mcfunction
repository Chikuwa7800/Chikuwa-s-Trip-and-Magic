##必殺技前叫び瞬間演出
 #音声
playsound trip_magic:entity.ginunga.cry.special hostile @a ~ ~1.5 ~ 4 1 0.0125

 #衝撃波？
execute positioned ~ ~1.5 ~ run function ch_effect_temp:effect/small_sound_wave/start

 #叫びtag
tag @s add ch_tm_bosses_ginga_cry_special