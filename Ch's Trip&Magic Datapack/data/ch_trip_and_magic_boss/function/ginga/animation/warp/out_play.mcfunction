##ワープ再生

 #スコアリセット
  scoreboard players reset @s ch_tm_bosses_tp_tick
  scoreboard players set @s ch_tm_bosses_action 323
  tag @s remove ch_tm.boss.ginunga.action.warp.transport

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.warp_in/stop
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.warp_out/play