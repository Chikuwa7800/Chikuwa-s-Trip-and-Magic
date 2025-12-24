execute if entity @s[tag=!ls_tm_using_shield] run function ls_trip_and_magic:magic/effect/frost/start {"time":"4"}
particle snowflake ^ ^ ^-0.5 0 0 0 0.2 50 force
execute if entity @s[tag=!ls_tm_using_shield,type=player] run playsound entity.arrow.hit_player player @p[tag=ch_tm_fb_attacker] ~ ~ ~ 100 0.25
playsound block.glass.break player @a ~ ~ ~ 1 1
execute positioned ^ ^ ^1 run damage @s 5 ls_trip_and_magic:magic/ice_lv1 by @n[tag=ch_tm_fb_attacker]