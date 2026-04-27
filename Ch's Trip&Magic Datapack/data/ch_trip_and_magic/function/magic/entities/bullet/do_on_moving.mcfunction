## 移動時に再起実行
 # 再起カウント
  scoreboard players add @s ch_tm.bullet.rerun 1
 # hit検知
  execute positioned ^ ^ ^ run function ch_trip_and_magic:magic/entities/bullet/check_hit
 # 演出
  particle minecraft:enchant ^ ^ ^ 0.0125 0.0125 0.0125 0 1 force
 # 再起カウントが移動速度値と同じになれば再起を止める
  $execute unless score @s ch_tm.bullet.rerun matches $(rerun).. positioned ^ ^ ^0.25 run return run function ch_trip_and_magic:magic/entities/bullet/do_on_moving with entity @s data
 # スコアリセット
  scoreboard players reset @s ch_tm.bullet.rerun

#say success to do on moving