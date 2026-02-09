tag @s add ch_tm_re_teleportation_scroll_marker
execute store result score @s ch_tm_entity_id run scoreboard players get @p ch_tm_entity_id
function ch_trip_and_magic:set_secondaly_entity_id
particle dust{color:8954236,scale:1} ~ ~0.5 ~ 0.25 0.5 0.25 0 20