##ワープ再生

 #スコアリセット
  scoreboard players reset @s ch_tm_bosses_tp_tick
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.action.warp_out
  tag @s remove ch_tm.boss.ginunga.action.warp.transport

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.warp_in/stop
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.warp_out/play