playsound entity.player.levelup player @a ~ ~ ~ 1 1
particle totem_of_undying ~ ~1.75 ~ 0 0 0 0.4 30

scoreboard players add @s ch_tm_magic_mana_up_by_core 1
scoreboard players add @s ls_tm_magic_mana_up 1

clear @s[gamemode=!creative,gamemode=!spectator] warped_fungus_on_a_stick[custom_data={"datapack_type": "ls_trip_magic","item_type": "equipment","equipment_type": "magic_core","item_condition": "mana_health_up","item_magic": "true"}] 1