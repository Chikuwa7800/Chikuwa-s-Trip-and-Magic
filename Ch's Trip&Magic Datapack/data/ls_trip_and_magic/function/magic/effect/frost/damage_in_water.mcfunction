execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle dust{color:[0.478,1.000,0.965],scale:2} ~ ~0.5 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle dust{color:[0.478,1.000,0.965],scale:2} ~ ~0.5 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle dust{color:[0.478,1.000,0.965],scale:2} ~ ~0.5 ~ 0.5 0.5 0.5 0. 10

execute if entity @s[type=!#ls_trip_and_magic:one_blocks,type=!slime] run particle snowflake ~ ~0.5 ~ 0.25 0.5 0.25 0. 10
execute if entity @s[type=#ls_trip_and_magic:one_blocks] run particle snowflake ~ ~0.5 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[type=slime] run particle snowflake ~ ~0.5 ~ 0.5 0.5 0.5 0. 10
effect give @s slowness 2 1 false
damage @s 3 ls_trip_and_magic:effect/frost
execute if entity @s[scores={ls_trip_magic_health=..0}] run function ls_trip_and_magic:magic/effect/frost/last_no_particle