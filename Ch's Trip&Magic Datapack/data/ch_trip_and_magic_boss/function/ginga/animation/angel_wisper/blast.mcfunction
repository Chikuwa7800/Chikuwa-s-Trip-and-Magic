##消し飛べ！
 #音
  playsound trip_magic:entity.ginunga.angel_wisper.blast hostile @a ~ ~ ~ 3 1
 
 #エフェクト
  function ch_effect_temp:vfx/ginga/large_boom/play
  execute positioned ^ ^ ^0.5 run function ch_effect_temp:vfx/ginga/large_boom/play
  execute positioned ^ ^ ^1.5 run function ch_effect_temp:vfx/ginga/large_boom/play
  function ch_effect_temp:vfx/ginga/big_flash/play


 #その他処理
  function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/run


#Tag消去
  scoreboard players set @n[tag=aj.ginunga.root] ch_tm_bosses_action 700
  scoreboard players reset @n[tag=aj.ginunga.root] ch_tm_bosses_ginga_angel_wisper