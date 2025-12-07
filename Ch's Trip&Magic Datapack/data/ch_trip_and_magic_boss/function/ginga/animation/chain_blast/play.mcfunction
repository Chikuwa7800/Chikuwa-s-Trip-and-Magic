##チェーンブラスト再生
 #行動上書き不可能tag
  tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animation
  tag @s[tag=aj.ginunga.root] add ch_tm_bosses_ginga_during_animate_cooldown
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.bypass.jam
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.action.chain_blast.prep
  tag @s[tag=aj.ginunga.root] add ch_tm.boss.ginunga.action.chain_blast

scoreboard players reset @s[tag=aj.ginunga.root] ch_tm_bosses_attacked
scoreboard players add @s ch_tm_bosses_ginga_chain_blast 1