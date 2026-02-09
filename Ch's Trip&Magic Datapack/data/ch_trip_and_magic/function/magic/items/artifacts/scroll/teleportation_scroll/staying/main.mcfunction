execute summon marker run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/staying/set_pos
particle witch ~ ~ ~ 0.0 0.0 0.0 0.5 10
particle dust{color:12246698,scale:1} ~ ~0.5 ~ 0.25 0.5 0.25 0 20
particle firework ~ ~1 ~ 0 0 0 0.1 20
particle end_rod ~ ~1 ~ 0.25 0.5 0.25 0 20
playsound entity.illusioner.prepare_blindness player @a ~ ~ ~ 1.25 1
playsound entity.illusioner.cast_spell player @a ~ ~ ~ 0.75 1
tag @s add ch_tm_has_teleport_location