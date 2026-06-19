execute if score @s ch_tm_magic_mana matches ..0 run return fail
scoreboard players add @s ch_tm_magic_lightning_rapier_charge_reduce_mana 1
execute if score @s ch_tm_magic_lightning_rapier_charge_reduce_mana matches 4.. run function ch_trip_and_magic:magic/items/weapons/lightning_rapier/reduce_mana
function ch_trip_and_magic:magic/items/weapons/lightning_rapier/item_damage/start {"amount": -1}
execute if predicate ch_trip_and_magic:magic/lightning_rapier run function ch_trip_and_magic:magic/items/weapons/lightning_rapier/charged_effect