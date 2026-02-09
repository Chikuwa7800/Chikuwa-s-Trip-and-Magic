tag @s add ch_tm_thantholos_pl
execute as @s[tag=ch_tm_thantholos_pl] at @s anchored eyes positioned ^ ^ ^1.5 run particle sweep_attack ~ ~-0.5 ~ 0 0 0 1 1
execute as @s[tag=ch_tm_thantholos_pl] at @s anchored eyes positioned ^ ^ ^1.5 run particle dust{color:[0.157,0.000,0.278],scale:1} ~ ~-0.5 ~ 1.5 0 1.5 1 50
execute as @s[tag=ch_tm_thantholos_pl] at @s run playsound entity.player.attack.sweep player @a ~ ~1 ~ 1 0.5
execute as @s[tag=ch_tm_thantholos_pl] at @s run playsound item.trident.throw player @a ~ ~1 ~ 1 0.5
execute as @s[tag=ch_tm_thantholos_pl] at @s run playsound entity.warden.tendril_clicks player @a ~ ~1 ~ 1 0.75
execute positioned ^ ^ ^1.5 positioned ~-3 ~ ~-3 as @e[tag=!ch_tm_thantholos_pl,dx=3,dz=3,type=!#ch_trip_and_magic:cannot_hurt_entities] at @s run damage @s 6 ch_trip_and_magic:add_damage by @p[tag=ch_tm_thantholos_pl]
execute positioned ^ ^ ^1.5 positioned ~-3 ~ ~-3 as @e[tag=!ch_tm_thantholos_pl,dx=3,dz=3,type=!#ch_trip_and_magic:cannot_hurt_entities,tag=!ch_tm_using_shield] at @s run function ch_trip_and_magic:magic/effect/abyss/start {"time":"10"}
tag @s remove ch_tm_thantholos_pl
