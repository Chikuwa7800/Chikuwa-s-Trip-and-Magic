## electro
 #ダミータイマーを増加させる
  scoreboard players add @s ls_tm_magic_electro_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ls_tm_magic_electro_tick_dummy=10..}] ls_tm_magic_electro_tick 1

  #ダメージ
   execute if entity @s[scores={ls_tm_magic_electro_tick=1..,ls_tm_magic_electro_tick_dummy=10..}] run function ls_trip_and_magic:magic/effect/electro/damage
   execute if entity @s[scores={ls_tm_magic_electro_tick=1..,ls_tm_magic_electro_tick_dummy=10..}] if block ~ ~ ~ water run function ls_trip_and_magic:magic/effect/electro/damage_in_water
execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle entity_effect{color:-917643} ~ ~0.5 ~ 0.25 0.5 0.25 0. 1
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle entity_effect{color:-917643} ~ ~0.5 ~ 0.25 0.25 0.25 0. 1
execute if entity @s[type=slime] run particle entity_effect{color:-917643} ~ ~0.5 ~ 0.5 0.5 0.5 0. 1
   #ダメージ(最後のやつ)
   execute if entity @s[scores={ls_tm_magic_electro_tick=..0,ls_tm_magic_electro_tick_dummy=10..}] run function ls_trip_and_magic:magic/effect/electro/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ls_tm_magic_electro_tick_dummy=10..}] ls_tm_magic_electro_tick_dummy