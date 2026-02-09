execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "spear"}}}}] run tag @s add ch_tm_used_spear
execute as @a[tag=ch_tm_used_spear] at @s anchored eyes run playsound item.trident.throw player @a ~ ~ ~ 1 1.5
execute as @a[tag=ch_tm_used_spear] at @s anchored eyes run function ch_trip_and_magic:trip/weapons/spear_refunction
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/spear
