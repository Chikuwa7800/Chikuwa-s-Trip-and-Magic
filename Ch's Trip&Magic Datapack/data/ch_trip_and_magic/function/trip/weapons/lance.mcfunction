tag @s add ch_tm_used_lance
execute anchored eyes run playsound item.trident.throw player @a ~ ~ ~ 1 1.5
execute anchored eyes run function ch_trip_and_magic:trip/weapons/lance_refunction
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/spear
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/lance