## ダメージ代入
 $execute if entity @s[type=player] as @a[limit=1,scores={ch_tm_entity_id=$(owner)}] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1
 $damage @s $(damage) ch_trip_and_magic:magic/$(damage_type) by @n[tag=ch_tm.magic_bullet] from @e[limit=1,scores={ch_tm_entity_id=$(owner)}]
 $execute if entity @s[tag=!ch_tm_using_shield] run function $(addition_effect) {"time":"3"}
 