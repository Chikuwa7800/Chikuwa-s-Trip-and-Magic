scoreboard players operation @s ch_tm_magic_xp_level_dummy = @s ch_tm_magic_xp_level

scoreboard players operation @s ch_tm_magic_mana_max_xp = @s ch_tm_magic_xp_level_dummy
scoreboard players operation @s ch_tm_magic_mana_max_xp /= #ch_trip_amount ch_tm_2
scoreboard players operation @s ch_tm_magic_mana_max += @s ch_tm_magic_mana_max_xp

scoreboard players operation @s ch_tm_magic_mana_up_xp = @s ch_tm_magic_xp_level_dummy
scoreboard players operation @s ch_tm_magic_mana_up_xp /= #ch_trip_amount ch_tm_5
scoreboard players operation @s ch_tm_magic_mana_up += @s ch_tm_magic_mana_up_xp