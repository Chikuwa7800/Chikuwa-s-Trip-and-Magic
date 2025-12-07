effect give @s resistance 1 4 true
effect give @s strength 2 3 true

tag @s remove ls_trip_and_magic_wakame_sword_dive

execute positioned over motion_blocking run tp @s ~ ~1 ~

execute positioned over motion_blocking run particle splash ~ ~ ~ 0.5 1 0.5 4 200 force
execute positioned over motion_blocking run particle falling_water ~ ~ ~ 0.5 1.5 0.5 1 300 force
execute positioned over motion_blocking run playsound entity.player.splash.high_speed player @a ~ ~2 ~ 1 1
execute positioned over motion_blocking run playsound entity.player.splash player @a ~ ~2 ~ 1 0.5

gamemode creative @s[tag=ls_trip_and_magic_wakame_sword_dive_c]

gamemode survival @s[tag=ls_trip_and_magic_wakame_sword_dive_s]

gamemode adventure @s[tag=ls_trip_and_magic_wakame_sword_dive_a]

tag @s add ls_trip_and_magic_wakame_sword_dive_cooldown

tag @s remove ls_trip_and_magic_wakame_sword_dive_c
tag @s remove ls_trip_and_magic_wakame_sword_dive_s
tag @s remove ls_trip_and_magic_wakame_sword_dive_a

scoreboard players set @s ls_tm_tick 0