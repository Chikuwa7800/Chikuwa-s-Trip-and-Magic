execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.443,0.639,0.043],scale:2} ~ ~1.25 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.443,0.639,0.043],scale:2} ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.443,0.639,0.043],scale:2} ~ ~1.25 ~ 0.5 0.5 0.5 0. 10

playsound block.fire.extinguish neutral @a ~ ~ ~ 1 1.5
damage @s 0.5 ch_trip_and_magic:effect/erosion
execute if entity @s[scores={ls_trip_magic_health=..0}] run function ch_trip_and_magic:magic/effect/erosion/last_no_particle