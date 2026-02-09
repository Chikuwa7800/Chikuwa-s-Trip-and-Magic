scoreboard players remove @s ch_tm_re_teleportation_scroll_tick 1
execute unless predicate ch_trip_and_magic:magic/scroll/rewritten_teleportation_scroll_has_location run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/reset
execute if predicate ch_trip_and_magic:acshident/sneaks run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/reset
execute if score @s ch_tm_re_teleportation_scroll_tick matches 59 run scoreboard players set @s ch_tm_teleportation_scroll_sec 3
execute if score @s ch_tm_re_teleportation_scroll_tick matches 59 run playsound block.end_portal.spawn player @a ~ ~ ~ 1 0.5
execute if score @s ch_tm_re_teleportation_scroll_tick matches 40 run scoreboard players set @s ch_tm_teleportation_scroll_sec 2
execute if score @s ch_tm_re_teleportation_scroll_tick matches 40 run playsound block.end_portal.spawn player @a ~ ~ ~ 1 0.65
execute if score @s ch_tm_re_teleportation_scroll_tick matches 20 run scoreboard players set @s ch_tm_teleportation_scroll_sec 1
execute if score @s ch_tm_re_teleportation_scroll_tick matches 20 run playsound block.end_portal.spawn player @a ~ ~ ~ 1 0.75
title @s times 0t 10t 1s
title @s title {"text":""}
title @s subtitle {"translate":"notice.teleport.time.1",extra:[{"score":{name:"@s",objective:"ch_tm_teleportation_scroll_sec"},extra:[{"translate":"notice.teleport.time.2",extra:[{text:"  ",extra:[{translate:"notice.teleport.sneak_cancel.1",extra:[{keybind:"key.sneak",extra:[{translate:"notice.teleport.sneak_cancel.2"}]}]}]}]}]}]}
particle electric_spark ~ ~1 ~ 0.25 0.5 0.25 0.25 5
particle dust{color:12246698,scale:1} ~ ~1 ~ 0.25 0.5 0.25 0 5
execute if score @s ch_tm_re_teleportation_scroll_tick matches 0 run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/use