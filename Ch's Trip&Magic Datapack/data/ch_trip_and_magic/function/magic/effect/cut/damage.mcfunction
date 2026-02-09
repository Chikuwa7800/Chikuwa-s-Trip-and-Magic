execute if entity @s[type=!#ch_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.549,0.000,0.000],scale:2} ~ ~1.25 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ch_trip_and_magic:one_blocks] run particle dust{color:[0.549,0.000,0.000],scale:2} ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.549,0.000,0.000],scale:2} ~ ~1.25 ~ 0.5 0.5 0.5 0. 10
playsound enchant.thorns.hit neutral @a ~ ~ ~ 0.5 0.5
damage @s 1 ch_trip_and_magic:effect/cut
execute if entity @s[scores={ls_trip_magic_health=..0}] run function ch_trip_and_magic:magic/effect/cut/last_no_particle