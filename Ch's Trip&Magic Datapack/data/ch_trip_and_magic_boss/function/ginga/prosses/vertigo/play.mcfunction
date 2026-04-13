scoreboard players reset @s ch_tm_bosses_vertigo
scoreboard players reset @s ch_tm_bosses_afraid
scoreboard players set @s ch_tm_bosses_action 520
tag @s[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.change.axis
function animated_java:ginunga/animations/pause_all
execute as @e[tag=ch_trip_and_magic_bosses_intaract_ginga] run data merge entity @s {Invulnerable:0b}

function animated_java:ginunga/animations/animation.model.vertigo.start/play