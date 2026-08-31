execute if entity @s[type=!#ch_trip_and_magic:cannot_hurt_entities] store result score @s ch_trip_magic_health run data get entity @s Health

execute if entity @s[tag=ch_tm_magic_pl_freeze] run schedule function ch_trip_and_magic:magic/freeze_resistance_end 1s

execute if entity @s[tag=ch_tm_wave_surfing_pl] run function ch_trip_and_magic:magic/magic_temp/waters/wave_surfing/main

execute if entity @s[tag=ch_tm_spell_charging,tag=!ch_tm_spell_charged_lv3,tag=!ch_tm_spell_charged_lv4,tag=!ch_tm_spell_charged_lv5] unless predicate ch_trip_and_magic:magic/spell_book/_has run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag

execute if entity @s[tag=ch_magic_lightning_sword_pl] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_sword/main_pl
execute if entity @s[tag=ch_tm_gust_pl] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/main
execute if entity @s[tag=ch_tm_bolea_pl] run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/main
execute if entity @s[tag=ch_tm_cryo_pl] run function ch_trip_and_magic:magic/magic_temp/ices/cryo_stasis/main
execute if entity @s[tag=ch_tm_vel_tulnna] run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/main_pl
execute if entity @s[tag=ch_tm_llyr_pl] run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/main
execute if entity @s[tag=ch_tm_adure_pl] run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/tick
execute if entity @s[tag=ch_tm_adure_counter] run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/count_tick

execute if entity @s[tag=ch_tm_magic_abyss_tick] run function ch_trip_and_magic:magic/effect/abyss/main
execute if entity @s[tag=ch_tm_magic_cut_tick] run function ch_trip_and_magic:magic/effect/cut/main
execute if entity @s[tag=ch_tm_magic_electro_tick] run function ch_trip_and_magic:magic/effect/electro/main
execute if entity @s[tag=ch_tm_magic_erosion_tick] run function ch_trip_and_magic:magic/effect/erosion/main
execute if entity @s[tag=ch_tm_magic_flame_tick] run function ch_trip_and_magic:magic/effect/flame/main
execute if entity @s[tag=ch_tm_magic_frost_tick] run function ch_trip_and_magic:magic/effect/frost/main
execute if entity @s[tag=ch_tm_magic_wet_tick] run function ch_trip_and_magic:magic/effect/wet/main

execute if entity @s[type=#illager,predicate=ch_trip_and_magic:entities/raiding_illagers,tag=!set_loot] run function ch_trip_and_magic:trip/appdata/raiding

execute if entity @s[type=evoker,tag=!set_loot] store result score @s ch_tm_random run random value 1..10
execute if entity @s[type=evoker,tag=!set_loot,scores={ch_tm_random=7..10}] run function ch_trip_and_magic:trip/appdata/change_to_having_staff
tag @s[type=evoker,tag=!set_loot] add set_loot
execute if entity @s[type=villager,tag=!set_loot] run data merge entity @s {DeathLootTable:"ch_trip_and_magic:entities/villager"}
tag @s[type=villager,tag=!set_loot] add set_loot

execute if entity @s[tag=ch_tm_evoker_have_staff] run particle dust{color:[0.016,0.345,0.302],scale:0.5} ~ ~1.5 ~ 0.1 0.1 0.1 0. 10 force

execute if entity @s[type=zombie,tag=ch_tm_trip_mobs_famer_zombie] run function ch_trip_and_magic:trip/mobs/firld_boss/main/zombie/fummer_zombie/main
execute if entity @s[type=skeleton,tag=ch_tm_trip_mobs_magic_skeleton] run function ch_trip_and_magic:trip/mobs/firld_boss/main/skeleton/magic
execute if entity @s[type=stray,tag=ch_tm_trip_mobs_magic_stray] run function ch_trip_and_magic:trip/mobs/firld_boss/main/stray/magic
execute if entity @s[type=bogged,tag=ch_tm_trip_mobs_magic_bogged] run function ch_trip_and_magic:trip/mobs/firld_boss/main/bogged/magic
execute if entity @s[type=husk,tag=ch_tm_trip_mobs_warrior_husk] run function ch_trip_and_magic:trip/mobs/firld_boss/main/husk/warrior/main
execute if entity @s[type=parched,tag=ch_tm_trip_mobs_magic_parched] run function ch_trip_and_magic:trip/mobs/firld_boss/main/parched/magic
execute if entity @s[type=vindicator,tag=ch_tm_trip_mobs_craive_illager] run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/main

execute if entity @s[type=skeleton,tag=!ch_tm_trip_mobs] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/skeleton
execute if entity @s[type=zombie,tag=!ch_tm_trip_mobs] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/zombie
execute if entity @s[type=stray,tag=!ch_tm_trip_mobs] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/stray
execute if entity @s[type=bogged,tag=!ch_tm_trip_mobs] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/bogged
execute if entity @s[type=husk,tag=!ch_tm_trip_mobs] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/husk
execute if entity @s[type=parched,tag=!ch_tm_trip_mobs] run function ch_trip_and_magic:trip/mobs/firld_boss/summon/parched

execute if entity @s[tag=ch_tm_magic_lightning_rapier_tick] run function ch_trip_and_magic:magic/items/weapons/lightning_rapier/add_damage_tick