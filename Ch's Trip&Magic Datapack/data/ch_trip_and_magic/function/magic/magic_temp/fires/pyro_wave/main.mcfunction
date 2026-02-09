scoreboard players add @s ch_tm_tick 1
rotate @s ~10 0
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_pyro_wave] ch_tm_entity_id at @s run tp @n[tag=ch_tm_pyro_wave] ~ ~ ~
particle flame ~ ~1 ~ 1.0 1.0 1.0 0.0125 10
particle dust{color:16747309,scale:1} ~ ~1 ~ 1.0 1.0 1.0 0.0125 10
execute positioned ~-3.5 ~ ~-3.5 as @e[tag=!ch_tm_pyro_wave,dx=6,dy=3,dz=6] positioned ~3.5 ~ ~3.5 run function ch_trip_and_magic:magic/magic_temp/fires/pyro_wave/damage
execute if score @s ch_tm_tick matches 100.. run kill @s