tag @n[tag=ch_tm.player.target.ginunga] remove ch_tm.player.target.ginunga
scoreboard players reset @s ch_tm_bosses_attacked_to_target

execute unless entity @e[tag=ch_tm.player.will_target.ginunga,distance=..32] run return run scoreboard players set @s ch_tm_bosses_action 101

function animated_java:ginunga/animations/animation.model.idle/stop

scoreboard players set @s ch_tm_bosses_action 102
tag @n[tag=ch_tm.player.will_target.ginunga] remove ch_tm.player.will_target.ginunga
execute unless entity @e[tag=ch_tm.player.will_target.ginunga] run function ch_trip_and_magic_boss:ginga/animation/cry/play
tag @n[type=#ch_trip_and_magic_boss:ginga_become_target,distance=..32] add ch_tm.player.target.ginunga
tag @n[type=#ch_trip_and_magic_boss:ginga_become_target,distance=..32] add ch_tm.player.target.ginunga.ago
