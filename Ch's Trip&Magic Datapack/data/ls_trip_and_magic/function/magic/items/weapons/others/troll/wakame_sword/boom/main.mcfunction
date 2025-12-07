tag @s add ls_trip_and_magic_wakame_sword_boom
tag @s add ls_trip_and_magic_wakame_sword_boom_cooldown

playsound entity.wither.shoot player @a ~ ~ ~ 1 1
playsound entity.blaze.shoot player @a ~ ~ ~ 1 1
playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 1
playsound entity.hostile.hurt player @a ~ ~ ~ 1 1

particle cloud ~ ~ ~ 0 0 0 0.6 100 force
particle crit ~ ~ ~ 1.5 0.5 1.5 0.6 100 force
particle flash{color:[1.0,1.0,1.0,1]} ~ ~1 ~ 0 0 0 0 1 force
particle rain ~ ~2 ~ 2 0 2 0.6 100 force

scoreboard players reset @s ls_tm_shift
tag @s remove ls_trip_and_magic_wakame_sword_jump_attack_one

execute as @e[distance=..4,tag=!ls_trip_and_magic_wakame_sword_boom] at @s run damage @s 8 sonic_boom by @a[tag=ls_trip_and_magic_wakame_sword_boom,limit=1,sort=nearest]

effect give @e[distance=..4,tag=!ls_trip_and_magic_wakame_sword_boom] darkness 2 3 true
effect give @e[distance=..4,tag=!ls_trip_and_magic_wakame_sword_boom] blindness 2 3 true
effect give @e[distance=..4,tag=!ls_trip_and_magic_wakame_sword_boom] night_vision 2 3 true
effect give @e[distance=..4,tag=!ls_trip_and_magic_wakame_sword_boom] slowness 1 3 true

tag @s remove ls_trip_and_magic_wakame_sword_boom