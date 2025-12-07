##索敵状態
execute as @s[tag=aj.ginunga.root] at @s run tag @s add ch_tm_bosses_ginuga_idle
execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.idle/play
