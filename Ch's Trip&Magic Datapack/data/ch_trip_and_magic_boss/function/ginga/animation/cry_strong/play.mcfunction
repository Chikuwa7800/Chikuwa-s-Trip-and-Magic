##強攻撃前叫び再生
 scoreboard players set @s ch_tm_bosses_action 411

 #アニメーション再生
execute as @s[tag=aj.ginunga.root] at @s run function animated_java:ginunga/animations/animation.model.chain_blast.cry/play
