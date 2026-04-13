scoreboard players add @s ch_tm_magic_bolea_tick 1
execute anchored eyes positioned ^ ^ ^0.01 positioned ~ ~-0.45 ~ run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/particle
execute if score @s ch_tm_magic_bolea_tick matches 1.. anchored eyes positioned ^ ^ ^1.5 positioned ~-1 ~-1 ~-1 as @e[dx=2,dy=1,dz=2,type=!#ch_trip_and_magic:cannot_hurt_entities] positioned ~2 ~1 ~2 positioned ^ ^ ^-1.5 unless score @s ch_tm_entity_id = @n[tag=ch_tm_bolea_pl] ch_tm_entity_id run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/damage_high
execute if score @s ch_tm_magic_bolea_tick matches 3.. anchored eyes positioned ^ ^ ^5 positioned ~-2.5 ~-1 ~-2.5 as @e[dx=3,dy=1,dz=3,type=!#ch_trip_and_magic:cannot_hurt_entities] positioned ~2.5 ~1 ~2.5 positioned ^ ^ ^-5 unless score @s ch_tm_entity_id = @n[tag=ch_tm_bolea_pl] ch_tm_entity_id run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/damage_mid
execute if score @s ch_tm_magic_bolea_tick matches 5.. anchored eyes positioned ^ ^ ^6.5 positioned ~-5 ~-1 ~-5 as @e[dx=4,dy=1,dz=4,type=!#ch_trip_and_magic:cannot_hurt_entities] positioned ~5 ~1 ~5 positioned ^ ^ ^-6.5 unless score @s ch_tm_entity_id = @n[tag=ch_tm_bolea_pl] ch_tm_entity_id run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/damage_low
execute if score @s ch_tm_magic_bolea_tick matches 5 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 10 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 15 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 20 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 25 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 30 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 35 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 40 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 45 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 50 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 55 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 60 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 65 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 70 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 75 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 80 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 85 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 90 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 95 run playsound trip_magic:magic.ice.bolea_breath.loop player @a ~ ~ ~ 1
execute if score @s ch_tm_magic_bolea_tick matches 100.. run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/end