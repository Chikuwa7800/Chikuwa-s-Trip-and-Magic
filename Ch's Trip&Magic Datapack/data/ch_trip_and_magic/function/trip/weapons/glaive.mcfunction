tag @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "glaive"}}}}] add ch_tm_used_glaive
execute if entity @s[tag=ch_tm_used_glaive] positioned ^ ^ ^3 run tag @e[tag=!ch_tm_used_glaive,distance=..2,type=!#ch_trip_and_magic:cannot_hurt_entities] add ch_tm_hit_glaive
execute as @s[tag=ch_tm_used_glaive] at @s anchored eyes positioned ^ ^ ^1.5 run particle sweep_attack ~ ~-0.5 ~ 0 0 0 1 1
execute as @s[tag=ch_tm_used_glaive] at @s run playsound entity.player.attack.sweep player @a ~ ~1 ~ 1 0.5
execute as @e[tag=ch_tm_hit_glaive] at @s run damage @s 1 ch_trip_and_magic:add_damage by @p[tag=ch_tm_used_glaive]
execute positioned ^ ^ ^3 run tag @e[tag=ch_tm_hit_glaive,distance=..2] remove ch_tm_hit_glaive
tag @s remove ch_tm_used_glaive
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/glaive