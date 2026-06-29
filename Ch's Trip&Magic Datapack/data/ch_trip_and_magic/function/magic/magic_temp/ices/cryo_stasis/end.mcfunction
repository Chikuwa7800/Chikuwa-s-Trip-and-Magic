attribute @s fall_damage_multiplier base reset
tag @s remove ch_tm_cryo_pl
playsound trip_magic:magic.ice.cryo_stasis.end player @a ~ ~ ~ 1 1
scoreboard players reset @s ch_tm_magic_cryo_circle
scoreboard players reset @s ch_tm_magic_cryo_start
scoreboard players reset @s ch_tm_magic_cryo_tick