##ティック処理
 #ヒットボックスダメージ検知
  execute as @e[tag=ch_trip_and_magic_bosses_intaract,predicate=!ch_trip_and_magic_boss:hitbox_full_health] at @s run function ch_trip_and_magic_boss:prosses/player_attack_to_boss/main

 #ギヌンガ
  function ch_trip_and_magic_boss:ginga/tick

 #埋まり対策
  execute as @e[tag=ch_tm_bosses_boss] at @s unless block ~ ~ ~ #ls_trip_and_magic:no_collision if block ~ ~1 ~ #ls_trip_and_magic:no_collision run tp @s ~ ~1 ~
  execute as @e[tag=ch_tm_bosses_boss] at @s if block ~ ~ ~ #ls_trip_and_magic:no_collision unless block ~ ~1 ~ #ls_trip_and_magic:no_collision run tp @s ~ ~1 ~
  execute as @e[tag=ch_tm_bosses_boss] at @s unless block ~ ~ ~ #ls_trip_and_magic:no_collision unless block ~ ~1 ~ #ls_trip_and_magic:no_collision run tp @s ~ ~1 ~

 #下にブロックがない場合は落ちる
  execute as @e[tag=ch_tm_bosses_boss] at @s if block ~ ~-0.125 ~ #ls_trip_and_magic:no_collision if block ~ ~ ~ #ls_trip_and_magic:no_collision if block ~ ~1 ~ #ls_trip_and_magic:no_collision run tp @s ~ ~-0.125 ~
  
 #戦闘曲
  function ch_trip_and_magic_boss:music/tick