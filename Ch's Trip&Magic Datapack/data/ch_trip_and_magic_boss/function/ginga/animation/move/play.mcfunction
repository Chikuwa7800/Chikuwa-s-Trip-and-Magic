##移動攻撃再生
 #行動上書き不可能tag
  tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animation
  tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animate_cooldown
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.action.move
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.action.move.prep

 #あらかじめタイマーを設定
  scoreboard players set @s ch_tm_bosses_timer 100

 #アニメーション再生
  execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.move_start/play
  execute as @n[tag=aj.ginunga.locator.mouse] at @s run playsound trip_magic:entity.ginunga.attack.move hostile @a ~ ~ ~ 1 1

say 移動攻撃開始