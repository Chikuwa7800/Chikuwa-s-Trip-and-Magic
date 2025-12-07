scoreboard players remove @s ch_tm_bosses_timer 1
execute if score @s ch_effect_temp_timer matches 99 run function animated_java:ginunga/animations/animation.model.move/play
execute if score @s ch_effect_temp_timer matches 99 run tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.change.axis
execute if score @s ch_effect_temp_timer matches 0..99 if block ^ ^ ^0.25 #ls_trip_and_magic:no_collision run tp @s ^ ^ ^0.25
execute if score @s ch_effect_temp_timer matches 0..99 if block ^ ^ ^0.25 #ls_trip_and_magic:no_collision run tp @s ^ ^ ^0.25
execute if score @s ch_effect_temp_timer matches 0 run function animated_java:ginunga/animations/pause_all
execute if score @s ch_effect_temp_timer matches 0 run function animated_java:ginunga/animations/animation.model.move_attack/play
execute if score @s ch_effect_temp_timer matches 0 run tag @s remove ch_tm.boss.ginunga.action.move

say 移動攻撃メイン処理実行中


#execute as @n[tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.action.cut_attack] at @s positioned ^ ^ ^0.5 run function ch_trip_and_magic_boss:ginga/animation/cut_attack/damage
#execute as @n[tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.action.cut_attack] at @s positioned ~ ~1.125 ~ run function ch_trip_and_magic_boss:ginga/separate_prosses/cutter/summon
