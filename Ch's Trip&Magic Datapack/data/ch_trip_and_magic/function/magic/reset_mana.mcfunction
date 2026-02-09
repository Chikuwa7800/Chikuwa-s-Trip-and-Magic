execute store result score @s ch_tm_keepinventory run gamerule keep_inventory
execute unless score @s ch_tm_keepinventory matches 0 run return fail

scoreboard players set @s ch_tm_magic_xp_level_dummy 0

scoreboard players set @s ch_tm_magic_mana_max 100
scoreboard players set @s ch_tm_magic_mana_up 1

scoreboard players operation @s ch_tm_magic_mana_max += @s ch_tm_magic_mana_max_by_core
scoreboard players operation @s ch_tm_magic_mana_up += @s ch_tm_magic_mana_up_by_core

scoreboard players set @s ch_tm_magic_mana_max_xp 0
scoreboard players set @s ch_tm_magic_mana_up_xp 0

scoreboard players reset @s ch_tm_keepinventory
scoreboard players set @s ch_tm_death_count 0