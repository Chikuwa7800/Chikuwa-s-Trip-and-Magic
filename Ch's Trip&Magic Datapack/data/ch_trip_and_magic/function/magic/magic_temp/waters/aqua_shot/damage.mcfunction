execute if entity @s[tag=!ch_tm_using_shield] run function ch_trip_and_magic:magic/effect/wet/start {"time":"8"}
data merge entity @s {Fire:0}
particle dust{color:[0.118,0.153,0.635],scale:4} ^ ^ ^-0.5 0.5 0.5 0.5 .1 7 force
playsound entity.generic.splash player @a ~ ~ ~ 1 0.75
execute if entity @s[tag=!ch_tm_using_shield,type=player] run playsound entity.arrow.hit_player player @p[tag=ch_tm_as_attacker] ~ ~ ~ 100 0.25
playsound block.water.ambient player @a ~ ~ ~ 1 1.25
execute positioned ^ ^ ^1 if entity @s[type=!enderman] run damage @s 5 ch_trip_and_magic:magic/waters_lv1 by @n[tag=ch_tm_as_attacker]
execute if entity @s[type=enderman] run playsound trip_magic:ender.break hostile @a ~ ~ ~ 1 1
execute positioned ^ ^ ^1 if entity @s[type=enderman] run damage @s 15 ch_trip_and_magic:magic/waters_lv1 by @n[tag=ch_tm_as_attacker]
