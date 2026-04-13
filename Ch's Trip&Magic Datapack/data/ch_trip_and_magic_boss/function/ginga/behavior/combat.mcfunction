##攻撃系処理

##強攻撃
 execute if score @s ch_tm_bosses_action matches 102..103 if score @s ch_tm_bosses_ginga_attacked matches 12.. run return run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/play

##強攻撃
 execute if score @s ch_tm_bosses_action matches 102..103 if score @s ch_tm_bosses_attacked matches 7.. run return run function ch_trip_and_magic_boss:ginga/animation/chain_blast/play

##距離によって攻撃変化
 execute if score @s ch_tm_bosses_action matches 102..103 if entity @n[tag=ch_tm.player.target.ginunga,distance=..10.999999999999999999999999999] run function ch_trip_and_magic_boss:ginga/behavior/attack_select/near
 execute if score @s ch_tm_bosses_action matches 102..103 if entity @n[tag=ch_tm.player.target.ginunga,distance=11..] run function ch_trip_and_magic_boss:ginga/behavior/attack_select/far

 #say combat
 