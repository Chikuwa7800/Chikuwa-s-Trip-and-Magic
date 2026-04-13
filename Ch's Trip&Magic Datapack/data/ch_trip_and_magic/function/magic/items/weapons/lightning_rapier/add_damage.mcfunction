damage @s 4 ch_trip_and_magic:add_damage_bypass_cooldown
playsound trip_magic:effect.electro neutral @a ~ ~ ~ 1 1
particle electric_spark ~ ~ ~ 0.0 0.0 0.0 0.25 1
particle dust{color:16774739,scale:1} ~ ~ ~ 0.25 0.25 0.25 0 5
scoreboard players reset @s ch_tm_magic_lightning_rapier_attack
tag @s remove ch_tm_magic_lightning_rapier_tick
