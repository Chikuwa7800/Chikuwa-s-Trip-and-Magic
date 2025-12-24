## flame
 #ダミータイマーを増加させる
  scoreboard players add @s ls_tm_magic_flame_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ls_tm_magic_flame_tick_dummy=20..}] ls_tm_magic_flame_tick 1

execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle entity_effect{color:-4163301} ~ ~0.5 ~ 0.25 0.5 0.25 0. 1
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle entity_effect{color:-4163301} ~ ~0.5 ~ 0.25 0.25 0.25 0. 1
execute if entity @s[type=slime] run particle entity_effect{color:-4163301} ~ ~0.5 ~ 0.5 0.5 0.5 0. 1
  #ダメージ
   execute if entity @s[scores={ls_tm_magic_flame_tick=1..,ls_tm_magic_flame_tick_dummy=20..}] run function ls_trip_and_magic:magic/effect/flame/damage
   #最後のやつ
   execute if entity @s[scores={ls_tm_magic_flame_tick=..0,ls_tm_magic_flame_tick_dummy=20..}] run function ls_trip_and_magic:magic/effect/flame/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ls_tm_magic_flame_tick_dummy=20..}] ls_tm_magic_flame_tick_dummy