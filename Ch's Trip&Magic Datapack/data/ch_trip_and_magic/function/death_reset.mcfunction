say hello?
tag @s remove ch_tm_magic_flame_tick
tag @s remove ch_tm_magic_frost_tick
tag @s remove ch_tm_magic_abyss_tick
tag @s remove ch_tm_magic_erosion_tick
tag @s remove ch_tm_magic_electro_tick
tag @s remove ch_tm_magic_cut_tick
tag @s remove ch_tm_magic_wet_tick
tag @s remove ch_tm.player.target.ginunga
tag @s remove ch_tm.player.target.ginunga.ago
tag @s remove ch_tm.player.will_target.ginunga

scoreboard players set @s ch_tm_magic_flame_tick 0
scoreboard players set @s ch_tm_magic_frost_tick 0
scoreboard players set @s ch_tm_magic_abyss_tick 0
scoreboard players set @s ch_tm_magic_erosion_tick 0
scoreboard players set @s ch_tm_magic_electro_tick 0
scoreboard players set @s ch_tm_magic_cut_tick 0
scoreboard players set @s ch_tm_magic_wet_tick 0

summon marker ~ ~ ~ {Tags:["ch_tm_death_marker"]}
execute store result entity @n[tag=ch_tm_death_marker] data."owner" int 1 run scoreboard players get @s ch_tm_entity_id

execute if entity @s[tag=ch_magic_lightning_sword_pl] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/reset_in_first with entity @n[type=marker,tag=ch_tm_death_marker] data
execute if entity @s[tag=ch_tm_pyro_pl] run function ch_trip_and_magic:magic/magic_temp/fires/pyro_wave/reset with entity @n[type=marker,tag=ch_tm_death_marker] data
execute if entity @s[tag=ch_tm_bolea_pl] run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/reset
execute if entity @s[tag=ch_tm_gust_pl] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/reset
execute if entity @s[tag=ch_tm_vel_tulnna] run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/reset
execute if entity @s[tag=ch_tm_cryo_pl] run function ch_trip_and_magic:magic/magic_temp/ices/cryo_stasis/end
execute if entity @s[tag=ch_tm_llyr_pl] run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/reset with entity @n[type=marker,tag=ch_tm_death_marker] data
execute if entity @s[tag=ch_tm_wave_surfing_pl] run function ch_trip_and_magic:magic/magic_temp/waters/wave_surfing/reset
execute if entity @s[tag=ch_tm_adure_pl] run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/end
execute if entity @s[tag=ch_tm_adure_counter] run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/end

function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag_no_effect

scoreboard players reset @s ch_trip_magic_death
kill @n[tag=ch_tm_death_marker]