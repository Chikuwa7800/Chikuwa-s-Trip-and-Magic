scoreboard players add @s ch_tm_bosses_explotion_tick 1
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] run summon item_display ~ ~0.5 ~ {Tags:["ch_tm_bosses_nerve"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] run summon item_display ~ ~0.5 ~ {Tags:["ch_tm_bosses_nerve"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] run summon item_display ~ ~0.5 ~ {Tags:["ch_tm_bosses_nerve"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] run summon item_display ~ ~0.5 ~ {Tags:["ch_tm_bosses_nerve"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] run summon item_display ~ ~0.5 ~ {Tags:["ch_tm_bosses_nerve"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] run summon item_display ~ ~0.5 ~ {Tags:["ch_tm_bosses_nerve"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=20}] at @a[tag=ch_tm.player.target.ginunga] run spreadplayers ~ ~ 3 10 false @e[tag=ch_tm_bosses_nerve]
execute if entity @s[scores={ch_tm_bosses_explotion_tick=70..}] run tag @n[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.action.set_nerve
execute if entity @s[scores={ch_tm_bosses_explotion_tick=70..}] run tag @n[tag=aj.ginunga.root] remove ch_tm_bosses_ginga_during_animation
execute if entity @s[scores={ch_tm_bosses_explotion_tick=70..}] run tag @n[tag=aj.ginunga.root] remove ch_tm_bosses_ginga_during_animate_cooldown
scoreboard players reset @s[scores={ch_tm_bosses_explotion_tick=70..}] ch_tm_bosses_explotion_tick

say 地雷設置メイン処理実行中 