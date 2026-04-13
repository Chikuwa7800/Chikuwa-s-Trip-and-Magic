tag @s add ch_tm_chalch_veil_pl
effect give @s resistance 1 4
playsound trip_magic:magic.water.chalch_veil.start player @a ~ ~ ~ 1
function ch_trip_and_magic:magic/magic_temp/waters/chalch_veil/summon
tag @s remove ch_tm_chalch_veil_pl