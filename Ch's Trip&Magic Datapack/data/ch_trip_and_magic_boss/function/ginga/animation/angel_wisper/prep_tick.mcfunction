##ch_tm.boss.ginunga.action.angel_wisper.prep

#
 scoreboard players add @s ch_tm_bosses_ginga_angel_wisper 1

#
 execute if score @s ch_tm_bosses_ginga_angel_wisper matches 2 run function animated_java:ginunga/animations/pause_all
 execute if score @s ch_tm_bosses_ginga_angel_wisper matches 2 run function ch_trip_and_magic_boss:ginga/animation/cry_special/play
 execute if score @s ch_tm_bosses_ginga_angel_wisper matches 13 run tag @s[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.change.axis
 execute if score @s ch_tm_bosses_ginga_angel_wisper matches 112 run function animated_java:ginunga/animations/pause_all
 execute if score @s ch_tm_bosses_ginga_angel_wisper matches 112 run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/animation
 execute if score @s ch_tm_bosses_ginga_angel_wisper matches 113 run tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.change.axis
 execute if entity @s[tag=ch_tm.boss.ginunga.action.angel_wisper.flash] run tag @s[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.change.axis
 execute if entity @s[tag=ch_tm.boss.ginunga.action.angel_wisper.flash] as @n[tag=aj.ginunga.locator.mouse] at @s run summon item_display ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.angel_wisper.core"],teleport_duration:3}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.angel_wisper.flash] as @n[tag=aj.ginunga.locator.mouse] at @s run tp @n[tag=ch_tm.boss.ginunga.action.angel_wisper.core] ~ ~ ~ ~ ~
 execute if entity @s[tag=ch_tm.boss.ginunga.action.angel_wisper.flash] as @n[tag=aj.ginunga.locator.mouse] at @s run playsound trip_magic:entity.ginunga.angel_wisper hostile @a ~ ~ ~ 1 1
 execute if entity @s[tag=ch_tm.boss.ginunga.action.angel_wisper.flash] run tag @s remove ch_tm.boss.ginunga.action.angel_wisper.flash
