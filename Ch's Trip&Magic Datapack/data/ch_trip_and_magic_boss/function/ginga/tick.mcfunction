##ギヌンガのティック処理
 #通常時の呼出台にパーティクル
  execute as @e[type=interaction,tag=ls_tm_bosses_ginunga_summon,tag=!ls_tm_bosses_ginunga_cannot_summon] at @s run particle end_rod ~ ~0.5 ~ 0.125 0.125 0.125 0.0125 1

 #叫び演出
  execute as @e[type=marker,tag=aj.ginunga.locator.mouse,tag=ch_tm_bosses_ginga_cry] at @s positioned ~ ~ ~ run function ch_trip_and_magic_boss:ginga/animation/cry/flash_loop
  execute as @e[type=marker,tag=aj.ginunga.locator.mouse,tag=ch_tm_bosses_ginga_cry_strong] at @s positioned ~ ~ ~ run function ch_trip_and_magic_boss:ginga/animation/cry_strong/flash_loop
  execute as @e[type=marker,tag=aj.ginunga.locator.mouse,tag=ch_tm_bosses_ginga_cry_special] at @s positioned ~ ~ ~ run function ch_trip_and_magic_boss:ginga/animation/cry_special/flash_loop

 #呼出ティック処理
  execute as @e[type=interaction,tag=ls_tm_bosses_ginunga_summon_during_summon] at @s run function ch_trip_and_magic_boss:ginga/first/summon_tick

 #戦闘態勢ティック処理
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm_bosses_in_combat,tag=!ch_tm_bosses_ginga_death] at @s run function ch_trip_and_magic_boss:ginga/behavior/tick

 #死亡
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm_bosses_ginga_death] at @s run function ch_trip_and_magic_boss:ginga/death/main
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm_bosses_in_combat] at @s unless entity @e[tag=ch_trip_and_magic_bosses_intaract_ginga,sort=nearest,limit=2] run function ch_trip_and_magic_boss:ginga/death/main
 #本体と分離した処理
  function ch_trip_and_magic_boss:ginga/separate_prosses/tick

 #軸合わせ
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  execute as @e[type=item_display,tag=aj.ginunga.root,tag=ch_tm.boss.ginunga.change.axis] at @s run function ch_trip_and_magic_boss:prosses/set_axis/set_axis
  