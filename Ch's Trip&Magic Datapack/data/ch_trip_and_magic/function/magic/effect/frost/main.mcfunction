## frost
 #ダミータイマーを増加させる
  scoreboard players add @s ch_tm_magic_frost_tick_dummy 1
 #タイマーを減少させる
  scoreboard players remove @s[scores={ch_tm_magic_frost_tick_dummy=40..}] ch_tm_magic_frost_tick 1
  execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.478,1.000,0.965],scale:0.5} ~ ~0.5 ~ 0.25 0.5 0.25 0. 5
  execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.478,1.000,0.965],scale:0.5} ~ ~0.5 ~ 0.25 0.25 0.25 0. 5
  execute if entity @s[type=slime] run particle dust{color:[0.478,1.000,0.965],scale:0.5} ~ ~0.5 ~ 0.5 0.5 0.5 0. 5

  #ダメージ
   execute if entity @s[scores={ch_tm_magic_frost_tick=1..,ch_tm_magic_frost_tick_dummy=40..}] run function ch_trip_and_magic:magic/effect/frost/damage
   execute if entity @s[scores={ch_tm_magic_frost_tick=1..,ch_tm_magic_frost_tick_dummy=40..}] if block ~ ~ ~ water run function ch_trip_and_magic:magic/effect/frost/damage_in_water
   #最後
   execute if entity @s[scores={ch_tm_magic_frost_tick=..0,ch_tm_magic_frost_tick_dummy=40..}] run function ch_trip_and_magic:magic/effect/frost/last
   execute if entity @s[tag=ch_tm_magic_flame_tick] run function ch_trip_and_magic:magic/effect/frost/last
 #ダミータイマーリセット
  scoreboard players reset @s[scores={ch_tm_magic_frost_tick_dummy=40..}] ch_tm_magic_frost_tick_dummy

