##プレイヤーの攻撃処理
 #tag付け
  tag @e[tag=ch_trip_and_magic_bosses_intaract] add ch_trip_and_magic_bosses_hurted

  execute on attacker run tag @s add ch_trip_and_magic_bosses_attacker

 #ダメージ計算
  #被攻撃者の現体力を最大値1000の整数で取得
   execute store result score #ch_tm_bosses_hitbox_health ch_tm_bosses_dummy run data get entity @s Health 100
   scoreboard players remove #ch_tm_bosses_hitbox_health ch_tm_bosses_dummy 100000
  #各ボスへ連絡
   execute if entity @s[tag=ch_trip_and_magic_bosses_intaract_ginga,tag=!ch_trip_and_magic_bosses_intaract_weak_parts] as @n[tag=aj.ginunga.root,tag=ch_tm_bosses_in_combat] at @s run function ch_trip_and_magic_boss:ginga/prosses/damage
   execute if entity @s[tag=ch_trip_and_magic_bosses_intaract_ginga,tag=ch_trip_and_magic_bosses_intaract_weak_parts] as @n[tag=aj.ginunga.root,tag=ch_tm_bosses_in_combat] at @s run function ch_trip_and_magic_boss:ginga/prosses/damage_weak

 #終了
  tag @e[tag=ch_trip_and_magic_bosses_hurted] remove ch_trip_and_magic_bosses_hurted
  tag @a[tag=ch_trip_and_magic_bosses_attacker] remove ch_trip_and_magic_bosses_attacker
  data merge entity @s {Health:1000.00f}