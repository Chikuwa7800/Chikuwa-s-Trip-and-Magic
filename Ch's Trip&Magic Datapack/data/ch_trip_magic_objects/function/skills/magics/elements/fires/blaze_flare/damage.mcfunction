execute if entity @s[tag=!ls_tm_using_shield] run function ls_trip_and_magic:magic/effect/flame/start {"time":"8"}
particle explosion ^ ^ ^-0.5 0 0 0 0.2 1 force
playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.75
execute if entity @s[tag=!ls_tm_using_shield,type=player] if entity @p[tag=ls_tm_magic_pl] run playsound entity.arrow.hit_player player @s ~ ~ ~ 100 0.25 1
playsound block.fire.ambient player @a ~ ~ ~ 1 1.25
damage @s 5 ls_trip_and_magic:magic/fire_lv1 by @n[tag=ls_tm_magic_pl]
#$say $(UUID)