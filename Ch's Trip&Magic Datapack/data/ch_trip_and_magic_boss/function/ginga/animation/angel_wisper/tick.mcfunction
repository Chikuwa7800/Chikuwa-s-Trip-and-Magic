##閃光
 scoreboard players add @s ch_effect_temp_timer 1
 function ch_effect_temp:vfx/flash/play
 tp @s ^ ^ ^0.05
 #83tick後に爆散
  execute if score @s ch_effect_temp_timer matches 84.. run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/blast
  execute if score @s ch_effect_temp_timer matches 84.. run kill @e[tag=ch_tm.boss.ginunga.action.angel_wisper.core]
  