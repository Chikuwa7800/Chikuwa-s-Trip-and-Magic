execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.898,1.000,0.000],scale:2} ~ ~0.5 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle dust{color:[0.898,1.000,0.000],scale:2} ~ ~0.5 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.898,1.000,0.000],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 0. 10

playsound trip_magic:effect.electro neutral @a ~ ~ ~ 1 1
effect give @s weakness 2 0 false
damage @s 0.5 ls_trip_and_magic:effect/electro
execute if entity @s[scores={ls_trip_magic_health=..0}] run function ls_trip_and_magic:magic/effect/electro/last_no_particle