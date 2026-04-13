##切りつけ再生
  scoreboard players set @s ch_tm_bosses_action 301

 #アニメーション再生
  function animated_java:ginunga/animations/animation.model.attack/play
  execute as @n[tag=aj.ginunga.locator.mouse] at @s run playsound trip_magic:entity.ginunga.attack.move hostile @a ~ ~ ~ 1 1