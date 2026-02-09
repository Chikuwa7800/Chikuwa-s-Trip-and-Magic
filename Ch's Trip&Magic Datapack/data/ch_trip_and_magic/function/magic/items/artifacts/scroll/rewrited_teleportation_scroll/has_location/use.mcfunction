scoreboard players remove @s ch_tm_magic_mana 50
playsound block.portal.travel player @s ~ ~ ~ 1 1 1
execute if predicate ch_trip_and_magic:magic/scroll/rewritten_teleportation_scroll_has_location_mainhand run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/mainhand_use
execute unless predicate ch_trip_and_magic:magic/scroll/rewritten_teleportation_scroll_has_location_mainhand run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/offhand_use
particle end_rod ~ ~1 ~ 0.125 0.45 0.125 0 20
particle dust{color:7308646,scale:4} ~ ~1 ~ 0.25 0.75 0.25 0 10
tag @s remove ch_tm_re_teleportation_scroll_tick
tag @s remove ch_tm_has_teleport_location
scoreboard players reset @s ch_tm_re_teleportation_scroll_tick
