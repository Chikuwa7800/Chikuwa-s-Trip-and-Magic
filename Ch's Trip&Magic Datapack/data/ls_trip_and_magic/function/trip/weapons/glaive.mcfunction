tag @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "glaive"}}}}] add ls_tm_used_glaive
execute if entity @s[tag=ls_tm_used_glaive] positioned ^ ^ ^3 run tag @e[tag=!ls_tm_used_glaive,distance=..2,type=!#ls_trip_and_magic:cannot_hurt_entities] add ls_tm_hit_glaive
execute as @s[tag=ls_tm_used_glaive] at @s anchored eyes positioned ^ ^ ^1.5 run particle sweep_attack ~ ~-0.5 ~ 0 0 0 1 1
execute as @s[tag=ls_tm_used_glaive] at @s run playsound entity.player.attack.sweep player @a ~ ~1 ~ 1 0.5
execute as @e[tag=ls_tm_hit_glaive] at @s run damage @s 1 ls_trip_and_magic:add_damage by @p[tag=ls_tm_used_glaive]
execute positioned ^ ^ ^3 run tag @e[tag=ls_tm_hit_glaive,distance=..2] remove ls_tm_hit_glaive
tag @s remove ls_tm_used_glaive
advancement revoke @s only ls_trip_and_magic:trip/weapons/attack/glaive