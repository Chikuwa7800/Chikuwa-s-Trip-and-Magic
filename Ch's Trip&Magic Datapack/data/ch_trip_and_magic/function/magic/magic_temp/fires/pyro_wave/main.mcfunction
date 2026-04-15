scoreboard players add @s ch_tm_tick 1
rotate @s ~10 0
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_pyro_wave] ch_tm_entity_id at @s run tp @n[tag=ch_tm_pyro_wave] ~ ~ ~
particle flame ~ ~1 ~ 1.0 1.0 1.0 0.0125 10
particle dust{color:16747309,scale:1} ~ ~1 ~ 1.0 1.0 1.0 0.0125 10
execute positioned ~-3.5 ~ ~-3.5 as @e[tag=!ch_tm_pyro_wave,dx=6,dy=3,dz=6,type=!#ch_trip_and_magic:cannot_hurt_entities] positioned ~3.5 ~ ~3.5 run function ch_trip_and_magic:magic/magic_temp/fires/pyro_wave/damage
execute if score @s ch_tm_tick matches 5 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 10 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 15 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 20 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 25 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 30 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 35 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 40 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 45 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 50 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 55 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 60 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 65 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 70 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 75 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 80 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 85 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 90 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 95 run playsound trip_magic:magic.fire.pyro_wave.loop player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 100 run playsound trip_magic:magic.fire.pyro_wave.end player @a ~ ~ ~ 1 1
execute if score @s ch_tm_tick matches 100.. run kill @s
execute unless score @s ch_tm_entity_id = @n[tag=ch_tm_pyro_pl] ch_tm_entity_id run kill @s