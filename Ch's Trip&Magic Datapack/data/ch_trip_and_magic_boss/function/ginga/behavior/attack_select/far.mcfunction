##遠距離処理
 execute store result score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random run random value 1..11

 #遠すぎる時ワープ
  execute if entity @n[tag=ch_tm.player.target.ginunga,distance=20..,tag=!ch_tm_bosses_ginga_during_animate_cooldown] run function ch_trip_and_magic_boss:ginga/animation/warp/play

 #バレットショット
  execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 1..5 run function ch_trip_and_magic_boss:ginga/animation/bullet_shot/play


 #ワープ
  execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 6..11 run function ch_trip_and_magic_boss:ginga/animation/bullet_shot/play

 #地雷設置
  #execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 5..7 run function ch_trip_and_magic_boss:ginga/animation/set_nerve/play

 #移動攻撃
  #execute if score @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random matches 8..10 run function ch_trip_and_magic_boss:ginga/animation/move/play

 scoreboard players reset @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ls_tm_random

 scoreboard players add @s ch_tm_bosses_attacked 1
 scoreboard players add @s ch_tm_bosses_ginga_attacked 1
 scoreboard players add @s[tag=!ch_tm_bosses_ginga_during_animate_cooldown] ch_tm_bosses_attacked_to_target 1

 #say far