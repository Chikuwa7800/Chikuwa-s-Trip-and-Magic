##バレットショット再生
 scoreboard players set @s ch_tm_bosses_action 311

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.shot_bullet/play
  execute as @n[tag=aj.ginunga.locator.mouse] at @s run playsound trip_magic:entity.ginunga.attack.move hostile @a ~ ~ ~ 1 1
