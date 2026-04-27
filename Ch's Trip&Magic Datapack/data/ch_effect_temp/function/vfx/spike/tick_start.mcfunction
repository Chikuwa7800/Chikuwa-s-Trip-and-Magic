#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

$execute as @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)},tag=ch_tm_spell_charged_lv5] at @s anchored eyes positioned ^1 ^ ^1 run tp @n[tag=ch.effect.spike.front,scores={ch_tm_entity_id=$(owner)}] ^ ^ ^ ~ ~
$execute as @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)},tag=ch_tm_spell_charged_lv5] at @s anchored eyes positioned ^1 ^ ^1 run tp @n[tag=ch.effect.spike.back,scores={ch_tm_entity_id=$(owner)}] ^ ^ ^ ~ ~

#テキストディスプレイの中身を書き換える
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s interpolation_duration set value 10
  execute if entity @s[scores={ch_effect_vfx_timer=1}] run data modify entity @s transformation."scale" set value [1f,1f,1f]
 #消去
  execute if entity @s[scores={ch_effect_vfx_timer=11..}] run tag @s remove ch.effect.start
  execute if entity @s[scores={ch_effect_vfx_timer=11..}] run tag @s add ch.effect.tick
