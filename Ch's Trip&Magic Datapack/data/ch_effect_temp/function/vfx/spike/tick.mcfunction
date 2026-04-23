#タイマー設定
  execute unless entity @s[scores={ch_effect_vfx_timer=0..}] run scoreboard players set @s ch_effect_vfx_timer 0

#タイマーを動かす
 scoreboard players add @s ch_effect_vfx_timer 1

$execute as @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)},tag=ch_tm_spell_charged_lv5] anchored eyes positioned ^-0.1 ^ ^1 run tp @n[tag=ch.effect.spike.front,scores={ch_tm_entity_id=$(owner)}] ^ ^ ^ ~ ~
$execute as @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)},tag=ch_tm_spell_charged_lv5] anchored eyes positioned ^0.1 ^ ^1 run tp @n[tag=ch.effect.spike.back,scores={ch_tm_entity_id=$(owner)}] ^ ^ ^ ~ ~

$execute if entity @n[type=!#ch_trip_and_magic:cannot_hurt_entities,scores={ch_tm_entity_id=$(owner)},tag=!ch_tm_spell_charged_lv5] run function ch_effect_temp:vfx/spike/end