##叫び再生
 scoreboard players set @s ch_tm_bosses_action 201

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.cry/play
