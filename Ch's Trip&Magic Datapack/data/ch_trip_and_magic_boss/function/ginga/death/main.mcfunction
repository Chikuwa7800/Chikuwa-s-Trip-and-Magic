scoreboard players add @s ch_tm_bosses_death_tick 1
scoreboard players set @s ch_tm_bosses_action 600

execute if score @s ch_tm_bosses_action matches 1 run tag @s remove ch_tm.boss.ginunga.change.axis
execute if score @s ch_tm_bosses_action matches 1 run advancement grant @a[tag=ch_tm.player.target.ginunga.ago] only ch_trip_and_magic:roots/boss/ginga
execute if score @s ch_tm_bosses_action matches 1 run tag @a[tag=ch_tm.player.target.ginunga.ago] add ch_tm.player.target.ginunga.ago
execute if score @s ch_tm_bosses_action matches 1 run tag @s add ch_tm_bosses_ginga_death
execute if score @s ch_tm_bosses_action matches 1 run playsound trip_magic:entity.ginunga.death hostile @a ~ ~ ~ 1 1 1
execute if score @s ch_tm_bosses_action matches 1 run scoreboard players set @s ch_tm_bosses_health 0
execute if score @s ch_tm_bosses_action matches 1 run function ch_trip_and_magic_boss:music/ginga/end

execute if score @s ch_tm_bosses_action matches 1 run function animated_java:ginunga/animations/pause_all

execute if score @s ch_tm_bosses_action matches 1 run function animated_java:ginunga/animations/animation.model.death/play

execute if score @s ch_tm_bosses_action matches 3 run kill @e[tag=ch_trip_and_magic_bosses_intaract,tag=ch_trip_and_magic_bosses_intaract_ginga,limit=2,sort=nearest]
execute if score @s ch_tm_bosses_action matches 3 run kill @e[tag=aj.ginunga.locator,limit=4,sort=nearest]

execute if score @s ch_tm_bosses_action matches 25..145 positioned ^ ^ ^-0.775 run function ch_trip_and_magic_boss:ginga/death/particle
execute if score @s ch_tm_bosses_action matches 49 positioned ~ ~1.5 ~ run loot spawn ^ ^ ^-0.775 loot ch_trip_and_magic_boss:entity/rise/drop
execute if score @s ch_tm_bosses_action matches 166.. run tag @e[tag=ls_tm_bosses_ginunga_summon] remove ch_tm_bosses_ginunga_cannot_summon
execute if score @s ch_tm_bosses_action matches 166.. run bossbar remove ch_tm_bosses:ginunga_health
execute if score @s ch_tm_bosses_action matches 166.. run function animated_java:ginunga/remove/this