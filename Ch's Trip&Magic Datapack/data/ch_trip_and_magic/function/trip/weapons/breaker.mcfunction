tag @s add ch_tm_used_undead_breaker
execute positioned ^ ^ ^1.5 run function ch_trip_and_magic:trip/weapons/breaker_damage
tag @s remove ch_tm_used_undead_breaker
advancement revoke @s only ch_trip_and_magic:trip/weapons/attack/undead_breaker
