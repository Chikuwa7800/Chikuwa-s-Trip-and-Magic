##戦闘態勢ティック処理
 #敵確認不可かつ行動中でない場合アイドリング状態移行
  execute if entity @s[type=item_display,tag=!ch_tm_bosses_ginuga_idle,tag=!ch_tm_bosses_ginga_during_animate_cooldown,tag=!ch_tm.boss.ginunga.has_target] run function ch_trip_and_magic_boss:ginga/animation/idle/play

 #敵確認
  execute unless entity @s[type=item_display,tag=ch_tm_bosses_ginga_during_animate_cooldown] unless entity @s[type=item_display,tag=ch_tm.boss.ginunga.has_target] if entity @e[tag=ch_tm.player.will_target.ginunga,distance=..32,gamemode=survival] run function ch_trip_and_magic_boss:ginga/behavior/discover/main
  execute unless entity @s[type=item_display,tag=ch_tm_bosses_ginga_during_animate_cooldown] unless entity @s[type=item_display,tag=ch_tm.boss.ginunga.has_target] if entity @e[tag=ch_tm.player.will_target.ginunga,distance=..32,gamemode=adventure] run function ch_trip_and_magic_boss:ginga/behavior/discover/main
 
 #イレジャーを確認する次第ターゲット変更
  execute unless entity @s[tag=ch_tm_bosses_ginga_during_animate_cooldown] unless entity @s[tag=ch_tm.boss.ginunga.has_target.illager] if entity @e[type=#ch_trip_and_magic_boss:ginga_priority_target,distance=..32] run function ch_trip_and_magic_boss:ginga/behavior/discover/main_illager

  #イレジャーがいなくなった場合
  execute unless entity @s[tag=ch_tm_bosses_ginga_during_animate_cooldown] if entity @s[tag=ch_tm.boss.ginunga.has_target.illager] unless entity @e[type=#ch_trip_and_magic_boss:ginga_priority_target,tag=ch_tm.player.target.ginunga.illager] run function ch_trip_and_magic_boss:ginga/behavior/discover/lost_illager

 #敵から40ブロック以上離れたか、プレイヤーのゲームモードがクリエイティブorスペクテイターに変更された場合ターゲット変更
 execute unless entity @s[tag=ch_tm_bosses_ginga_during_animate_cooldown] if entity @s[tag=ch_tm.boss.ginunga.has_target] if entity @e[type=#ch_trip_and_magic_boss:ginga_target,tag=ch_tm.player.target.ginunga,distance=40..] run function ch_trip_and_magic_boss:ginga/behavior/discover/main
 execute unless entity @s[tag=ch_tm_bosses_ginga_during_animate_cooldown] if entity @s[tag=ch_tm.boss.ginunga.has_target] if entity @a[tag=ch_tm.player.target.ginunga,gamemode=creative] run function ch_trip_and_magic_boss:ginga/behavior/discover/main
 execute unless entity @s[tag=ch_tm_bosses_ginga_during_animate_cooldown] if entity @s[tag=ch_tm.boss.ginunga.has_target] if entity @a[tag=ch_tm.player.target.ginunga,gamemode=spectator] run function ch_trip_and_magic_boss:ginga/behavior/discover/main

 #イレジャー以外のターゲットに4回以上攻撃した場合ターゲット変更
 execute unless entity @s[tag=ch_tm_bosses_ginga_during_animate_cooldown] if entity @s[tag=ch_tm.boss.ginunga.has_target,tag=!ch_tm.boss.ginunga.has_target.illager] if score @s ch_tm_bosses_attacked_to_target matches 4.. if entity @e[tag=ch_tm.player.will_target.ginunga] run function ch_trip_and_magic_boss:ginga/behavior/discover/main

 #32ブロック以内の敵となりうるエンティティにtag付与
  tag @e[type=#ch_trip_and_magic_boss:ginga_target,tag=!ch_tm.player.target.ginunga,tag=!ch_tm.player.will_target.ginunga,distance=..32] add ch_tm.player.will_target.ginunga
  tag @a[tag=!ch_tm.player.target.ginunga,tag=!ch_tm.player.will_target.ginunga,distance=..32,gamemode=survival] add ch_tm.player.will_target.ginunga
  tag @a[tag=!ch_tm.player.target.ginunga,tag=!ch_tm.player.will_target.ginunga,distance=..32,gamemode=adventure] add ch_tm.player.will_target.ginunga

 #敵となりうるエンティティが40ブロック以上離れた場合tag消去
  tag @e[type=#ch_trip_and_magic_boss:ginga_target,tag=ch_tm.player.will_target.ginunga,distance=40..] remove ch_tm.player.will_target.ginunga
  tag @a[tag=ch_tm.player.will_target.ginunga,gamemode=creative] remove ch_tm.player.will_target.ginunga
  tag @a[tag=ch_tm.player.will_target.ginunga,gamemode=spectator] remove ch_tm.player.will_target.ginunga

 #攻撃系処理
  function ch_trip_and_magic_boss:ginga/behavior/combat

 #ボスバーにボスの体力を同期
  execute store result bossbar ch_tm_bosses:ginunga_health value run scoreboard players get @s ch_tm_bosses_health

 #もし体力が0以下になったら 
  execute if entity @s[scores={ch_tm_bosses_health=..0},tag=!ch_tm.boss.ginunga.bypass.jam] run tag @s add ch_tm_bosses_ginga_death

 #say idle

 #手からエフェクト
 execute if entity @n[tag=ch_tm.boss.ginunga.action.cut_attack.particle] at @e[tag=aj.ginunga.locator.right_arm] run particle dust{color:[0.114,0.173,0.400],scale:1} ~ ~ ~ 0 0 0 0.0125 1
 execute if entity @n[tag=ch_tm.boss.ginunga.action.cut_attack.particle] at @e[tag=aj.ginunga.locator.left_arm] run particle dust{color:[0.114,0.173,0.400],scale:1} ~ ~ ~ 0 0 0 0.0125 1
 execute if entity @n[tag=ch_tm.boss.ginunga.action.cut_attack.particle] at @e[tag=aj.ginunga.locator.right_arm] run particle dust{color:[0.186,0.131,0.402],scale:1} ~ ~ ~ 0 0 0 0.0125 1
 execute if entity @n[tag=ch_tm.boss.ginunga.action.cut_attack.particle] at @e[tag=aj.ginunga.locator.left_arm] run particle dust{color:[0.186,0.131,0.402],scale:1} ~ ~ ~ 0 0 0 0.0125 1

 #ワープ処理までのタイマー
  scoreboard players add @s ch_tm_bosses_tp_tick 1
  execute if entity @s[tag=ch_tm.boss.ginunga.action.warp.transport,scores={ch_tm_bosses_tp_tick=20..}] run function ch_trip_and_magic_boss:ginga/animation/warp/out_play

 #爆散
  execute if entity @s[tag=ch_tm.boss.ginunga.action.explode] run function ch_trip_and_magic_boss:ginga/animation/explode/main

 #チェーンブラスト
  execute if entity @s[tag=ch_tm.boss.ginunga.action.chain_blast.prep] run function ch_trip_and_magic_boss:ginga/animation/chain_blast/prep_tick

 #天使の呟き
  execute if entity @s[tag=ch_tm.boss.ginunga.action.angel_wisper.prep] run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/prep_tick

 #地雷設置
  #execute if entity @s[tag=ch_tm.boss.ginunga.action.set_nerve] run function ch_trip_and_magic_boss:ginga/animation/set_nerve/main

 #移動
  #execute if entity @s[tag=ch_tm.boss.ginunga.action.move,tag=!ch_tm.boss.ginunga.action.move.prep] run function ch_trip_and_magic_boss:ginga/animation/move/main