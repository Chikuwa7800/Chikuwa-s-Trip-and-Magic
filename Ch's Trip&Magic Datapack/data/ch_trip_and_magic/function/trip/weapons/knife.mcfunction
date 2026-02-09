tag @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "knife"}}}}] add ch_tm_used_knife
execute as @s[tag=ch_tm_used_knife] at @s anchored eyes positioned ^ ^ ^0.75 run particle crit ~ ~-0.125 ~ 0.25 0.25 0.25 0. 5
execute as @s[tag=ch_tm_used_knife] at @s run playsound entity.player.attack.sweep player @a ~ ~1 ~ 1 2
tag @s remove ch_tm_used_knife
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/knife