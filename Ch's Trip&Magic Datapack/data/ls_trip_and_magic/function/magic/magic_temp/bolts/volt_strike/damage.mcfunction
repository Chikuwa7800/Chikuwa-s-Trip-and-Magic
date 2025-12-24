execute if entity @s[tag=!ls_tm_using_shield] run function ls_trip_and_magic:magic/effect/electro/start {"time":"8"}
particle flash{color:[1.0,1.0,1.0,1]} ^ ^ ^-0.5 0.2 0.2 0.2 0.05 20 force
playsound item.axe.wax_off player @a ~ ~ ~ 2 0.75
execute if entity @s[tag=!ls_tm_using_shield,type=player] run playsound entity.arrow.hit_player player @p[tag=ch_tm_vs_attacker] ~ ~ ~ 100 0.25
playsound block.grindstone.use player @a ~ ~ ~ 2 2
playsound block.grindstone.use player @a ~ ~ ~ 2 0.5
damage @s 5 ls_trip_and_magic:magic/bolts_lv1 by @n[tag=ch_tm_vs_attacker]
