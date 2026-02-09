execute if entity @s[tag=ch_tm_has_teleport_location] run return run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/has_location/check
execute unless entity @s[tag=ch_tm_has_teleport_location] run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/staying/main
