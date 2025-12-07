scoreboard players reset @s ch_tm_bosses_afraid
tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animation
tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animate_cooldown
tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginunga_during_afraid
tag @s[tag=aj.ginunga.root] remove ch_tm_bosses_ginuga_idle
tag @s[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.change.axis
function animated_java:ginunga/animations/pause_all
execute as @e[tag=ch_trip_and_magic_bosses_intaract_ginga] run data merge entity @s {Invulnerable:0b}

execute positioned ^-4 ^-4 ^-4 unless entity @n[tag=ch_trip_and_magic_bosses_attacker,dx=4,dy=4,dz=4] at @s run function animated_java:ginunga/animations/animation.model.afraid_front/play

execute positioned ^-4 ^-4 ^-4 if entity @n[tag=ch_trip_and_magic_bosses_attacker,dx=4,dy=4,dz=4] at @s run function animated_java:ginunga/animations/animation.model.afraid_back/play
