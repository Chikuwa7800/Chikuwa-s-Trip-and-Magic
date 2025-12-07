tag @n[tag=ch_tm.player.target.ginunga] remove ch_tm.player.target.ginunga
tag @n[type=#ch_trip_and_magic_boss:ginga_priority_target] add ch_tm.player.target.ginunga
tag @n[type=#ch_trip_and_magic_boss:ginga_priority_target] add ch_tm.player.target.ginunga.illager

function animated_java:ginunga/animations/animation.model.idle/stop

tag @s add ch_tm.boss.ginunga.has_target
tag @s add ch_tm.boss.ginunga.has_target.illager
