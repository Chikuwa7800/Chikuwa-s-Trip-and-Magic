##ch_tm.boss.ginunga.action.chain_blast.prep

#
 scoreboard players add @s ch_tm_bosses_ginga_chain_blast 1

#
 execute if score @s ch_tm_bosses_ginga_chain_blast matches 2 run function ch_trip_and_magic_boss:ginga/animation/cry_strong/play
 execute if score @s ch_tm_bosses_ginga_chain_blast matches 16 run tag @s[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.change.axis
 execute if score @s ch_tm_bosses_ginga_chain_blast matches 126 run function ch_trip_and_magic_boss:ginga/animation/chain_blast/animation
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run summon marker ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.chain_blast.set.0","ch_tm.boss.ginunga.action.chain_blast.set"]}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run summon marker ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.chain_blast.set.1","ch_tm.boss.ginunga.action.chain_blast.set"]}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run summon marker ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.chain_blast.set.2","ch_tm.boss.ginunga.action.chain_blast.set"]}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run summon marker ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.chain_blast.set.3","ch_tm.boss.ginunga.action.chain_blast.set"]}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run summon marker ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.chain_blast.set.4","ch_tm.boss.ginunga.action.chain_blast.set"]}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run summon marker ~ ~ ~ {Tags:["ch_tm.boss.ginunga.action.chain_blast.set.5","ch_tm.boss.ginunga.action.chain_blast.set"]}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] at @e[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 2 7 true @e[tag=ch_tm.boss.ginunga.action.chain_blast.set.0]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] at @e[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 2 7 true @e[tag=ch_tm.boss.ginunga.action.chain_blast.set.1]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] at @e[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 2 7 true @e[tag=ch_tm.boss.ginunga.action.chain_blast.set.2]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] at @e[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 2 7 true @e[tag=ch_tm.boss.ginunga.action.chain_blast.set.3]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] at @e[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 2 7 true @e[tag=ch_tm.boss.ginunga.action.chain_blast.set.4]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] at @e[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 2 7 true @e[tag=ch_tm.boss.ginunga.action.chain_blast.set.5]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] as @e[tag=ch_tm.boss.ginunga.action.chain_blast.set] at @s positioned ~ ~0.0125 ~ run function animated_java:chain_blast/summon {args: {animation: 'animation.model.summon', start_animation: true}}
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run kill @e[tag=ch_tm.boss.ginunga.action.chain_blast.set]
 execute if entity @s[tag=ch_tm.boss.ginunga.action.set_blast] run tag @s remove ch_tm.boss.ginunga.action.set_blast
