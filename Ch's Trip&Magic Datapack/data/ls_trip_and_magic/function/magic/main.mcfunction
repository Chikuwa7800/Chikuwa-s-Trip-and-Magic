#ls_tm_magic_pl_tick
scoreboard players add @e[tag=ls_tm_magic_pl] ls_tm_magic_pl_tick 1

tag @e[tag=ls_tm_magic_pl,scores={ls_tm_magic_pl_tick=20..}] remove ls_tm_magic_pl

scoreboard players set @e[scores={ls_tm_magic_pl_tick=20..}] ls_tm_magic_pl_tick 0


#アイテム使用系
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "wakame_sword"}}}}] at @s run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/tick
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon"}}}}] at @s run function ls_trip_and_magic:magic/items/weapons/wands/check
execute as @a[nbt={equipment:{offhand:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon"}}}}}] at @s run function ls_trip_and_magic:magic/items/weapons/wands/check
execute as @e[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=ls_trip_and_magic:facing] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/start
execute as @e[tag=ch_tm_magic_crafting_table_start,type=item_frame,predicate=!ls_trip_and_magic:facing] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/start_wall
execute as @e[tag=ch_tm_magic_crafting_table_core,type=interaction] at @s run function ls_trip_and_magic:magic/block/magic_crafting_table/tick

execute as @e[tag=ls_tm_fireball_display] at @s run function ls_trip_and_magic:magic/magic_temp/fires/blaze_flare/tick
execute as @e[tag=ls_tm_iceyball_display] at @s run function ls_trip_and_magic:magic/magic_temp/ices/frost_bullet/tick
execute as @e[tag=ls_tm_waterball_display] at @s run function ls_trip_and_magic:magic/magic_temp/waters/aqua_shot/tick
execute as @e[tag=ls_tm_wind_display] at @s run function ls_trip_and_magic:magic/magic_temp/nature/zephyr_blades/tick
execute as @e[tag=ls_tm_abyss_display] at @s run function ls_trip_and_magic:magic/magic_temp/void/abyss_whisper/tick
execute as @e[tag=ls_tm_volt_display] at @s run function ls_trip_and_magic:magic/magic_temp/bolts/volt_strike/tick

execute as @e[tag=ls_magic_lightning_sword_model] at @s run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/main

#エフェクト
function ls_trip_and_magic:magic/effect/tick

#魔法の杖
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","material": "emerald","weapon_type": "magic_staff"}}}},tag=!ls_tm_having_magic_staff] at @s run function ls_trip_and_magic:magic/items/weapons/magic_staff/start
execute as @a[nbt=!{SelectedItem:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","material": "emerald","weapon_type": "magic_staff"}}}},tag=ls_tm_having_magic_staff] at @s run function ls_trip_and_magic:magic/items/weapons/magic_staff/end

#マナ表示
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{"item_magic": "true"}}}}] at @s run function ls_trip_and_magic:magic/display/main
execute as @a[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{"item_magic": "true"}}}}}] at @s run function ls_trip_and_magic:magic/display/main
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{"weapon_type": "magic_core"}}}}] at @s run function ls_trip_and_magic:magic/display/main
execute as @a[nbt={equipment:{offhand:{components:{"minecraft:custom_data":{"weapon_type": "magic_core"}}}}}] at @s run function ls_trip_and_magic:magic/display/main
execute as @a at @s if score @s ls_tm_magic_mana < @s ls_tm_magic_mana_max run scoreboard players add @a[scores={ls_tm_magic_mana_add=..20}] ls_tm_magic_mana_add 1
execute as @a[scores={ls_tm_magic_mana_add=20..}] at @s if score @s ls_tm_magic_mana < @s ls_tm_magic_mana_max run scoreboard players operation @s ls_tm_magic_mana += @s ls_tm_magic_mana_up
execute if score @s ls_tm_magic_mana < @s ls_tm_magic_mana_max run execute as @a[scores={ls_tm_magic_mana_add=20..}] at @s run particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 0.1 5 force @s
scoreboard players set @a[scores={ls_tm_magic_mana_add=20..}] ls_tm_magic_mana_add 0
execute as @a at @s if score @s ls_tm_magic_mana > @s ls_tm_magic_mana_max run scoreboard players operation @s ls_tm_magic_mana = @s ls_tm_magic_mana_max
scoreboard players set @a[scores={ls_tm_magic_mana=..-1}] ls_tm_magic_mana 0

#クールダウン
function ls_trip_and_magic:magic/cooldown_tick

#その他の処理
execute unless entity @e[tag=ls_tm_fireball] run gamerule mob_griefing true
execute as @e[tag=ls_tm_fireball] at @s run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.001 4
execute as @e[tag=ls_tm_fireball] at @s run particle lava ~ ~ ~ 0.1 0.1 0.1 0.001 2

execute as @e[tag=ls_tm_fireball] at @s unless block ^ ^ ^1 #ls_trip_and_magic:no_collision run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force
execute as @e[tag=ls_tm_fireball] at @s unless block ~ ~-0.1 ~ #ls_trip_and_magic:no_collision run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force
execute as @e[tag=ls_tm_fireball] at @s unless block ~ ~0.1 ~ #ls_trip_and_magic:no_collision run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force

execute as @e[tag=ls_tm_fangs_staff_defense_fang_inside] at @s positioned over motion_blocking run tp @s ~ ~ ~

execute as @e[tag=ls_tm_fangs_staff_defense_fang_outside] at @s positioned over motion_blocking run tp @s ~ ~ ~

function ls_trip_and_magic:magic/items/weapons/others/troll/tick
function ls_trip_and_magic:magic/items/artifacts/main

execute if entity @e[tag=ls_tm_magic_pl_freeze] run schedule function ls_trip_and_magic:magic/freeze_resistance_end 1s

execute as @e[tag=ls_tm_wave_surfing_pl] at @s run function ls_trip_and_magic:magic/magic_temp/waters/wave_surfing/main
