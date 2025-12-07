playsound entity.player.splash.high_speed player @a ~ ~ ~ 1 1
playsound entity.player.splash player @a ~ ~ ~ 1 0.5

particle splash ~ ~ ~ 0.5 1 0.5 1 200 force
particle falling_water ~ ~ ~ 0.5 0.5 0.5 1 300 force

tp @s ~ ~-2.5 ~

tag @s add ls_trip_and_magic_wakame_sword_dive

tag @s[gamemode=creative] add ls_trip_and_magic_wakame_sword_dive_c

tag @s[gamemode=survival] add ls_trip_and_magic_wakame_sword_dive_s

tag @s[gamemode=adventure] add ls_trip_and_magic_wakame_sword_dive_a

gamemode spectator @s

scoreboard players set @s ls_tm_tick 0