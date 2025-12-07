execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.020,0.051,1.000],scale:2} ~ ~0.5 ~ 0.25 0.5 0.25 0. 5
execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle splash ~ ~0.5 ~ 0.25 0.5 0.25 0. 5

execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle dust{color:[0.020,0.051,1.000],scale:2} ~ ~0.5 ~ 0.25 0.25 0.25 0. 5
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle splash ~ ~0.5 ~ 0.25 0.25 0.25 0. 5

execute if entity @s[type=slime] run particle dust{color:[0.020,0.051,1.000],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 0. 5
execute if entity @s[type=slime] run particle splash ~ ~0.5 ~ 0.5 0.5 0.5 0. 5
playsound entity.player.swim neutral @a ~ ~ ~ 1 1
damage @s[type=!enderman] 1 ls_trip_and_magic:effect/wet
damage @s[type=enderman] 2 ls_trip_and_magic:effect/wet
execute if entity @s[type=enderman] run playsound trip_magic:ender.break hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={ls_trip_magic_health=..0}] run function ls_trip_and_magic:magic/effect/wet/last_no_particle
