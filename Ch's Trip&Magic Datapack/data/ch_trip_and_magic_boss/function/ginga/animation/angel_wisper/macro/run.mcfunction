##マクロ使用
 #
 
 
 

 #演出
  #画面白飛び演出
   
   #実行
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=0..3.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/flash {"flash":"60"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=4..6.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/flash {"flash":"50"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=7..10.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/flash {"flash":"30"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=11..] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/flash {"flash":"20"}

  #ダメージ処理
   #おら、くらえ
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=0..2.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/damage {"damage":"24"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=3..4.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/damage {"damage":"17"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=5..7.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/damage {"damage":"14"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=8..10.999999] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/damage {"damage":"10"}
    execute as @e[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=10..20] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/macro/damage {"damage":"5"}

 #リセット
  #scoreboard players reset @s ch_tm_bosses_distance
