##必殺技前叫び再生
 #行動上書き不可能tag
tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animation
tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animate_cooldown

 #アニメーション再生
execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.angel_wisper.cry/play