##近距離処理
 execute store result score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random run random value 1..10

 #切りつけ攻撃
  execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 1..4 run function ch_trip_and_magic_boss:ginga/animation/cut_attack/play

 #爆発
  execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 5..7 run function ch_trip_and_magic_boss:ginga/animation/explode/play
  
 #ワープ
  execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 8..10 run function ch_trip_and_magic_boss:ginga/animation/warp/play

 scoreboard players reset @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random

 scoreboard players add @s ch_tm_bosses_attacked 1
 scoreboard players add @s ch_tm_bosses_ginga_attacked 1
 scoreboard players add @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ch_tm_bosses_attacked_to_target 1

 #say near