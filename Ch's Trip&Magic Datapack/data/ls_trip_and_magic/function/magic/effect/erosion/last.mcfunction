execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle composter ~ ~1.25 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle composter ~ ~1.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle composter ~ ~1.25 ~ 0.5 0.5 0.5 0. 10
playsound entity.player.levelup neutral @a ~ ~ ~ 0.5 2
tag @s remove ls_tm_magic_erosion_tick
scoreboard players set @s ls_tm_magic_erosion_tick 0