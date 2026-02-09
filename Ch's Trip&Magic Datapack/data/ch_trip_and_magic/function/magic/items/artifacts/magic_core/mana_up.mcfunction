playsound entity.player.levelup player @a ~ ~ ~ 1 1
particle dust{color:2863924,scale:1.25} ~ ~1.75 ~ 0 0 0 0.4 30

scoreboard players add @s ch_tm_magic_mana_max_by_core 10
scoreboard players add @s ch_tm_magic_mana_max 10

clear @s[gamemode=!creative,gamemode=!spectator] warped_fungus_on_a_stick[custom_data={"datapack_type": "ls_trip_magic","item_type": "equipment","equipment_type": "magic_core","item_condition": "mana_max_up","item_magic": "true"}] 1