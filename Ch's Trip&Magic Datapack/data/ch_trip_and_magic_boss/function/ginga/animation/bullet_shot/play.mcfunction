##バレットショット再生
 #行動上書き不可能tag
  tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animation
  tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animate_cooldown
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.action.bullet_shot
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.change.axis

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.shot_bullet/play
  execute as @n[tag=aj.ginunga.locator.mouse] at @s run playsound trip_magic:entity.ginunga.attack.move hostile @a ~ ~ ~ 1 1
