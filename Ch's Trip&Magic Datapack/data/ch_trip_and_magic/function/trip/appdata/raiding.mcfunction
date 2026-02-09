data merge entity @s[type=evoker] {DeathLootTable:"ch_trip_and_magic:entities/raiding_illagers/evok"}
data merge entity @s[type=illusioner] {DeathLootTable:"ch_trip_and_magic:entities/raiding_illagers/illu"}
data merge entity @s[type=pillager] {DeathLootTable:"ch_trip_and_magic:entities/raiding_illagers/pill"}
data merge entity @s[type=vindicator] {DeathLootTable:"ch_trip_and_magic:entities/raiding_illagers/vind"}
function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/has_location/teleport_effect
tag @s add set_loot