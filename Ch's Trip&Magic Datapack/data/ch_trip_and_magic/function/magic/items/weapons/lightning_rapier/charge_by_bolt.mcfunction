execute if entity @s[tag=ch_tm_magic_electro_tick] run function ch_trip_and_magic:magic/effect/electro/last_no_particle
function ch_trip_and_magic:magic/items/weapons/lightning_rapier/item_damage/start {"amount": -10}
execute if predicate ch_trip_and_magic:magic/lightning_rapier run function ch_trip_and_magic:magic/items/weapons/lightning_rapier/charge
