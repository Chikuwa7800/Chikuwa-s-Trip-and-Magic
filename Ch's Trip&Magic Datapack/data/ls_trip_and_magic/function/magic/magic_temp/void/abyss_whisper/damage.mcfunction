execute if entity @s[tag=!ls_tm_using_shield] run function ls_trip_and_magic:magic/effect/abyss/start {"time":"8"}
particle sonic_boom ^ ^ ^-0.5 0 0 0 0 1 force
execute if entity @s[tag=!ls_tm_using_shield,type=player] run playsound entity.arrow.hit_player player @p[tag=ch_tm_aw_attacker] ~ ~ ~ 100 0.25
playsound block.sculk_sensor.clicking_stop player @a ~ ~ ~ 2 0.5
execute positioned ^ ^ ^1 run damage @s 5 ls_trip_and_magic:magic/void_lv1 by @n[tag=ch_tm_aw_attacker]