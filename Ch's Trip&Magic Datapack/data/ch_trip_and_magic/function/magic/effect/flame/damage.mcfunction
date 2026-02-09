execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[1.000,0.467,0.059],scale:2} ~ ~0.5 ~ 0.25 0.5 0.25 0. 5
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[1.000,0.467,0.059],scale:2} ~ ~0.5 ~ 0.25 0.25 0.25 0. 5
execute if entity @s[type=slime] run particle dust{color:[1.000,0.467,0.059],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 0. 5

execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle flame ~ ~0.5 ~ 0.25 0.5 0.25 0. 5
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle flame ~ ~0.5 ~ 0.25 0.25 0.25 0. 5
execute if entity @s[type=slime] run particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0. 5

playsound entity.zombie.infect neutral @a ~ ~ ~ 1 0.25
damage @s 1 ch_trip_and_magic:effect/flame
execute if entity @s[scores={ls_trip_magic_health=..0}] run function ch_trip_and_magic:magic/effect/flame/last_no_particle