#ls_tm_magic_pl_tick
scoreboard players add @e[tag=ls_tm_magic_pl] ls_tm_magic_pl_tick 1

tag @e[tag=ls_tm_magic_pl,scores={ls_tm_magic_pl_tick=20..}] remove ls_tm_magic_pl

scoreboard players set @e[scores={ls_tm_magic_pl_tick=20..}] ls_tm_magic_pl_tick 0

#アイテム持ってる？
execute as @a[predicate=ls_trip_and_magic:magic/magic_item] at @s run function ls_trip_and_magic:magic/items/has_magic_item

#アイテム使用系
execute as @e[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=ls_trip_and_magic:facing] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/start
execute as @e[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=!ls_trip_and_magic:facing] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/start_wall
execute as @e[tag=ch_tm_magic_crafting_table_core,type=interaction] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/tick

execute as @e[type=block_display,tag=ls_tm_magic_ball] at @s run function ls_trip_and_magic:magic/magic_temp/tick

#エフェクト
function ls_trip_and_magic:magic/effect/tick

#魔法の杖
execute as @a[predicate=ls_trip_and_magic:magic/magic_wand,tag=!ls_tm_having_magic_staff] at @s run function ls_trip_and_magic:magic/items/weapons/magic_staff/start
execute as @a[predicate=!ls_trip_and_magic:magic/magic_wand,tag=ls_tm_having_magic_staff] at @s run function ls_trip_and_magic:magic/items/weapons/magic_staff/end

#マナ表示
execute as @a if score @s ls_tm_magic_mana < @s ls_tm_magic_mana_max run scoreboard players add @a[scores={ls_tm_magic_mana_add=..20}] ls_tm_magic_mana_add 1
execute as @a[scores={ls_tm_magic_mana_add=20..}] if score @s ls_tm_magic_mana < @s ls_tm_magic_mana_max run scoreboard players operation @s ls_tm_magic_mana += @s ls_tm_magic_mana_up
execute as @a[scores={ls_tm_magic_mana_add=20..}] at @s if score @s ls_tm_magic_mana < @s ls_tm_magic_mana_max run particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 0.1 5 normal @s
scoreboard players set @a[scores={ls_tm_magic_mana_add=20..}] ls_tm_magic_mana_add 0
execute as @a if score @s ls_tm_magic_mana > @s ls_tm_magic_mana_max run scoreboard players operation @s ls_tm_magic_mana = @s ls_tm_magic_mana_max
scoreboard players set @a[scores={ls_tm_magic_mana=..-1}] ls_tm_magic_mana 0

#クールダウン
function ls_trip_and_magic:magic/cooldown_tick

#その他の処理

#execute as @e[tag=ls_tm_fangs_staff_defense_fang_inside] at @s positioned over motion_blocking run tp @s ~ ~ ~

#execute as @e[tag=ls_tm_fangs_staff_defense_fang_outside] at @s positioned over motion_blocking run tp @s ~ ~ ~

function ls_trip_and_magic:magic/items/weapons/others/troll/tick
function ls_trip_and_magic:magic/items/artifacts/main

execute if entity @e[tag=ls_tm_magic_pl_freeze] run schedule function ls_trip_and_magic:magic/freeze_resistance_end 1s

execute as @e[tag=ls_tm_wave_surfing_pl] at @s run function ls_trip_and_magic:magic/magic_temp/waters/wave_surfing/main

execute if entity @s[tag=ch_tm_spell_charged_lv3] unless predicate ls_trip_and_magic:magic/spell_book/_has run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag

execute as @e[tag=ch_tm_gust_pl] at @s run function ls_trip_and_magic:magic/magic_temp/nature/gust_burst/main
execute as @e[tag=ch_tm_gust_burster] at @s run function ls_trip_and_magic:magic/magic_temp/nature/gust_burst/gust_main
execute as @e[tag=ls_magic_lightning_sword_pl] at @s run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/main_pl
execute as @e[tag=ch_tm_magic_lightning_sword_shot] at @s run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/main_ls
execute as @e[tag=ls_tm_blast_ball_display] at @s run function ls_trip_and_magic:magic/magic_temp/fires/flame_blast/main

execute as @a at @s if score @s ch_tm_magic_xp_level > @s ch_tm_magic_xp_level_dummy run function ls_trip_and_magic:magic/magic_strength

execute as @a if score @s ch_tm_death_count matches 1.. run function ls_trip_and_magic:magic/reset_mana
