##呼出ティック処理
 #スコア加算
  scoreboard players add @s ch_tm_bosses_summon_tick 1

 #テレポートアニメーション1f目(透明状態)のギヌンガを500m上に召喚 
  execute if entity @s[scores={ch_tm_bosses_summon_tick=1}] positioned ~ ~500 ~ rotated ~-90 ~ run function animated_java:ginunga/summon {args: {animation: 'animation.model.warp_out', frame: 0}}

 #1秒経過で演出
  execute if entity @s[scores={ch_tm_bosses_summon_tick=20}] run particle sculk_soul ~ ~ ~ 1 1 1 0 100 force
  execute if entity @s[scores={ch_tm_bosses_summon_tick=20}] run particle soul_fire_flame ~ ~ ~ 1 1 1 0 100 force
  execute if entity @s[scores={ch_tm_bosses_summon_tick=20}] run particle portal ~ ~ ~ 0 0 0 0.5 125 force
  execute if entity @s[scores={ch_tm_bosses_summon_tick=20}] run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0
  execute if entity @s[scores={ch_tm_bosses_summon_tick=20}] run playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 1 0

 #2秒経過でまた演出
  execute if entity @s[scores={ch_tm_bosses_summon_tick=40}] run particle soul ~ ~ ~ 1 1 1 0 100 force
  execute if entity @s[scores={ch_tm_bosses_summon_tick=40}] run particle portal ~ ~ ~ 0 0 0 0.5 500 force
  execute if entity @s[scores={ch_tm_bosses_summon_tick=40}] run playsound entity.warden.heartbeat hostile @a ~ ~ ~ 1 0
  execute if entity @s[scores={ch_tm_bosses_summon_tick=40}] run playsound block.portal.trigger hostile @a ~ ~ ~ 2 2

 #5秒経過でギヌンガを500m下に移動させ、テレポートアニメーション再生
  execute if entity @s[scores={ch_tm_bosses_summon_tick=100}] positioned ~ ~500 ~ as @n[type=item_display,tag=aj.ginunga.root] at @s run tp @s ~ ~-500 ~
  execute if entity @s[scores={ch_tm_bosses_summon_tick=100}] as @n[type=item_display,tag=aj.ginunga.root] at @s run function ch_trip_and_magic_boss:ginga/animation/summon/warp_play

 #6.75秒経過(テレポートアニメーション終了後)で叫び再生+ボスバー
  execute if entity @s[scores={ch_tm_bosses_summon_tick=135}] as @n[type=item_display,tag=aj.ginunga.root] at @s run function ch_trip_and_magic_boss:ginga/animation/cry/play
  execute if entity @s[scores={ch_tm_bosses_summon_tick=160}] run bossbar add ch_tm_bosses:ginunga_health {"translate":"bossber.ginunga","color":"white"}
  execute if entity @s[scores={ch_tm_bosses_summon_tick=160}] run bossbar set ch_tm_bosses:ginunga_health color purple
  execute if entity @s[scores={ch_tm_bosses_summon_tick=160}] run bossbar set ch_tm_bosses:ginunga_health max 166400
  execute if entity @s[scores={ch_tm_bosses_summon_tick=160}] run bossbar set ch_tm_bosses:ginunga_health players @a
  execute if entity @s[scores={ch_tm_bosses_summon_tick=160}] run bossbar set ch_tm_bosses:ginunga_health value 166400
  execute if entity @s[scores={ch_tm_bosses_summon_tick=160}] as @n[type=item_display,tag=aj.ginunga.root] at @s run function ch_trip_and_magic_boss:music/ginga/play

 #12.6秒経過(叫びアニメーション終了後)で戦闘態勢へ移行、同時にtag消しとスコアリセット
 execute if entity @s[scores={ch_tm_bosses_summon_tick=252}] as @n[type=item_display,tag=aj.ginunga.root] at @s run tag @s add ch_tm.boss.ginunga.has_target
  execute if entity @s[scores={ch_tm_bosses_summon_tick=252}] as @n[type=item_display,tag=aj.ginunga.root] at @s run tag @s add ch_tm_bosses_in_combat
  execute if entity @s[scores={ch_tm_bosses_summon_tick=252}] as @n[type=item_display,tag=aj.ginunga.root] at @s run scoreboard players set @s ch_tm_bosses_health 166400
  execute if entity @s[scores={ch_tm_bosses_summon_tick=252}] run tag @s remove ch_tm_bosses_ginunga_summon_during_summon
  execute if entity @s[scores={ch_tm_bosses_summon_tick=252}] run tag @s remove ch_tm_bosses_ginunga_summon_after_summon
  execute if entity @s[scores={ch_tm_bosses_summon_tick=252}] run scoreboard players reset @s ch_tm_bosses_summon_tick
