tag @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "undead_killer"}}}}] add ls_tm_used_undead_breaker
execute if entity @s[tag=ls_tm_used_undead_breaker] positioned ^ ^ ^1.5 run tag @n[tag=!ls_tm_used_undead_breaker,distance=..3,type=#minecraft:undead] add ls_tm_hit_undead_breaker
execute as @e[tag=ls_tm_hit_undead_breaker] at @s run particle enchanted_hit ~ ~1 ~ 0.25 2 0.25 0.04 10
execute as @e[tag=ls_tm_hit_undead_breaker] at @s run particle crit ~ ~1 ~ 0.25 2 0.25 0.04 10
execute as @s[tag=ls_tm_used_undead_breaker] at @s run playsound trip_magic:item.trip.undead_killer player @a ~ ~1 ~ 1 1
execute as @e[tag=ls_tm_hit_undead_breaker] at @s run damage @s 3 ls_trip_and_magic:add_damage_bypass_cooldown by @p[tag=ls_tm_used_undead_breaker]
tag @n[tag=ls_tm_hit_undead_breaker] remove ls_tm_hit_undead_breaker
tag @s remove ls_tm_used_undead_breaker
advancement revoke @s only ls_trip_and_magic:trip/weapons/attack/undead_breaker
