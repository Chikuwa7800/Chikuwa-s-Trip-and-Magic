##ワープ再生
 scoreboard players set @s ch_tm_bosses_action 321

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.warp_in/play
  execute as @n[tag=aj.ginunga.locator.mouse] at @s run playsound trip_magic:entity.ginunga.cry.prep hostile @a ~ ~ ~ 1 1