scoreboard players remove @s ch_tm_magic_mana 25
playsound block.portal.travel player @s ~ ~ ~ 1 1 1
execute as @e[type=marker,tag=ch_tm_teleport_marker] if score @s ch_tm_entity_id = @p ch_tm_entity_id at @s run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/has_location/teleport_effect
execute as @e[type=marker,tag=ch_tm_teleport_marker] if score @s ch_tm_entity_id = @p ch_tm_entity_id run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/has_location/teleport
clear @s[tag=ch_tm_has_teleport_location,gamemode=!creative,gamemode=!spectator] warped_fungus_on_a_stick[minecraft:custom_data={"datapack_type": "ls_trip_magic","item_type": "equipment","equipment_type": "scroll","item_condition": "teleportation_scroll","item_magic": "true"}] 1
particle end_rod ~ ~3 ~ 0 1.5 0 0. 30
particle end_rod ~ ~1 ~ 0.25 0.75 0.25 0. 10
particle dust{color:12246698,scale:4} ~ ~1 ~ 0.25 0.75 0.25 0 10
tag @s remove ch_tm_teleportation_scroll_tick
tag @s remove ch_tm_has_teleport_location
scoreboard players reset @s ch_tm_teleportation_scroll_tick