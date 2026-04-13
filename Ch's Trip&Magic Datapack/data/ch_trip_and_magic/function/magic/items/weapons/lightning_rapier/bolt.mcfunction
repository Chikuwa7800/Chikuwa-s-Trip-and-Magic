advancement revoke @s only ch_trip_and_magic:magic/using_lightning_rapier
tag @s add ch_tm_lightning_rapier_bolt_pl
execute anchored eyes positioned ^ ^-0.25 ^ run function ch_trip_and_magic:magic/items/weapons/lightning_rapier/bolt/start
function ch_trip_and_magic:magic/items/weapons/lightning_rapier/item_damage/start {"amount": 2}
function ch_trip_and_magic:magic/items/weapons/lightning_rapier/over_heat
tag @s remove ch_tm_lightning_rapier_bolt_pl
