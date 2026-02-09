#ch_tm_magic_pl_tick
scoreboard players add @e[tag=ch_tm_magic_pl] ch_tm_magic_pl_tick 1

tag @e[tag=ch_tm_magic_pl,scores={ch_tm_magic_pl_tick=20..}] remove ch_tm_magic_pl

scoreboard players set @e[scores={ch_tm_magic_pl_tick=20..}] ch_tm_magic_pl_tick 0

#アイテム持ってる？
execute as @a[predicate=ch_trip_and_magic:magic/magic_item] at @s run function ch_trip_and_magic:magic/items/has_magic_item

#アイテム使用系
execute as @e[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=ch_trip_and_magic:facing] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/start
execute as @e[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=!ch_trip_and_magic:facing] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/start_wall
execute as @e[tag=ch_tm_magic_crafting_table_core,type=interaction] at @s run function ch_trip_and_magic:magic/block/magic_crafting_table/tick

execute as @e[type=block_display,tag=ch_tm_magic_ball] at @s run function ch_trip_and_magic:magic/magic_temp/tick

#エフェクト
function ch_trip_and_magic:magic/effect/tick

#魔法の杖
execute as @a[predicate=ch_trip_and_magic:magic/magic_wand,tag=!ch_tm_having_magic_staff] at @s run function ch_trip_and_magic:magic/items/weapons/magic_staff/start
execute as @a[predicate=!ch_trip_and_magic:magic/magic_wand,tag=ch_tm_having_magic_staff] at @s run function ch_trip_and_magic:magic/items/weapons/magic_staff/end

#マナ表示
execute as @a if score @s ch_tm_magic_mana < @s ch_tm_magic_mana_max run scoreboard players add @a[scores={ch_tm_magic_mana_add=..20}] ch_tm_magic_mana_add 1
execute as @a[scores={ch_tm_magic_mana_add=20..}] if score @s ch_tm_magic_mana < @s ch_tm_magic_mana_max run scoreboard players operation @s ch_tm_magic_mana += @s ch_tm_magic_mana_up
execute as @a[scores={ch_tm_magic_mana_add=20..}] at @s if score @s ch_tm_magic_mana < @s ch_tm_magic_mana_max run particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 0.1 5 normal @s
scoreboard players set @a[scores={ch_tm_magic_mana_add=20..}] ch_tm_magic_mana_add 0
execute as @a if score @s ch_tm_magic_mana > @s ch_tm_magic_mana_max run scoreboard players operation @s ch_tm_magic_mana = @s ch_tm_magic_mana_max
scoreboard players set @a[scores={ch_tm_magic_mana=..-1}] ch_tm_magic_mana 0

#クールダウン
function ch_trip_and_magic:magic/cooldown_tick

#その他の処理

#execute as @e[tag=ch_tm_fangs_staff_defense_fang_inside] at @s positioned over motion_blocking run tp @s ~ ~ ~

#execute as @e[tag=ch_tm_fangs_staff_defense_fang_outside] at @s positioned over motion_blocking run tp @s ~ ~ ~

function ch_trip_and_magic:magic/items/weapons/others/troll/tick
function ch_trip_and_magic:magic/items/artifacts/main

execute if entity @e[tag=ch_tm_magic_pl_freeze] run schedule function ch_trip_and_magic:magic/freeze_resistance_end 1s

execute as @e[tag=ch_tm_wave_surfing_pl] at @s run function ch_trip_and_magic:magic/magic_temp/waters/wave_surfing/main

execute if entity @s[tag=ch_tm_spell_charged_lv3] unless predicate ch_trip_and_magic:magic/spell_book/_has run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag

execute as @e[tag=ls_magic_lightning_sword_pl] at @s run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/main_pl
execute as @e[tag=ch_tm_gust_pl] at @s run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/main
execute as @e[tag=ch_tm_bolea_pl] at @s run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/main
execute as @e[tag=ch_tm.magic_entity] at @s run function ch_trip_and_magic:magic/magic_entities

execute as @a at @s if score @s ch_tm_magic_xp_level > @s ch_tm_magic_xp_level_dummy run function ch_trip_and_magic:magic/magic_strength

execute as @a if score @s ch_tm_death_count matches 1.. run function ch_trip_and_magic:magic/reset_mana

execute as @a[tag=ch_tm_teleportation_scroll_tick] at @s run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/has_location/tick

execute as @a[tag=ch_tm_re_teleportation_scroll_tick] at @s run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/tick

#ダイアログからの出力(未使用)
#execute as @a[scores={ch_tm_used_teleportation_scroll=1..}] at @s if predicate ch_trip_and_magic:magic/scroll/teleportation_scroll run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/staying/set_location
#execute as @a[scores={ch_tm_used_teleportation_scroll=1..}] at @s if predicate ch_trip_and_magic:magic/scroll/rewritten_teleportation_scroll run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/set_location/set_location
