playsound entity.player.levelup player @a ~ ~ ~ 1 1
particle totem_of_undying ~ ~1.75 ~ 0 0 0 0.4 30

scoreboard players operation @s ls_tm_magic_mana_max -= @s ch_tm_magic_mana_max_by_core
scoreboard players operation @s ch_tm_magic_mana_max_by_core += #ch_trip_amount ch_tm_10
scoreboard players operation @s ls_tm_magic_mana_max += @s ch_tm_magic_mana_max_by_core

clear @s[gamemode=!creative,gamemode=!spectator] warped_fungus_on_a_stick[custom_data={"datapack_type": "ls_trip_magic","item_type": "equipment","equipment_type": "magic_core","item_condition": "mana_max_up","item_magic": "true"}] 1