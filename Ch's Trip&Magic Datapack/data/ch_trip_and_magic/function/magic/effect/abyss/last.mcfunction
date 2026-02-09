damage @s 6 ch_trip_and_magic:effect/abyss
execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.173,0.0,0.153],scale:2} ~ ~1.25 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.173,0.0,0.153],scale:2} ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.173,0.0,0.153],scale:2} ~ ~1.25 ~ 0.5 0.5 0.5 0. 10
execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.067,0.0,0.173],scale:2} ~ ~1.25 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.067,0.0,0.173],scale:2} ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.067,0.0,0.173],scale:2} ~ ~1.25 ~ 0.5 0.5 0.5 0. 10
execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle soul_fire_flame ~ ~1.25 ~ 0.25 0.5 0.25 0. 100
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle soul_fire_flame ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle soul_fire_flame ~ ~1.25 ~ 0.5 0.5 0.5 0. 10
playsound block.sculk_catalyst.bloom neutral @a ~ ~ ~ 1 1
playsound entity.warden.step neutral @a ~ ~ ~ 0.5 1
playsound entity.warden.sonic_boom neutral @a ~ ~ ~ 0.5 2
playsound block.end_portal.spawn neutral @a ~ ~ ~ 0.5 2
playsound block.sculk_sensor.clicking_stop neutral @a ~ ~ ~ 1 1
tag @s remove ch_tm_magic_abyss_tick
scoreboard players set @s ch_tm_magic_abyss_tick 0