execute if entity @s[tag=!ls_tm_using_shield] run function ls_trip_and_magic:magic/effect/cut/start {"time":"8"}
data merge entity @s {DeathTime:19}
particle gust ^ ^ ^-0.5 0.25 0.25 0.25 0.2 5 force
execute if entity @s[tag=!ls_tm_using_shield,type=player] run playsound entity.arrow.hit_player player @p[tag=ch_tm_zb_attacker] ~ ~ ~ 100 0.25
playsound item.trident.riptide_3 player @a ~ ~ ~ 1 1.5
damage @s 5 ls_trip_and_magic:magic/nature_lv1 by @n[tag=ch_tm_zb_attacker]
data merge entity @s {DeathTime:0}