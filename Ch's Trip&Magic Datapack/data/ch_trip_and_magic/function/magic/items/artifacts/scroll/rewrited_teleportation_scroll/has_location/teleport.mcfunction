playsound entity.player.teleport player @a ~ ~ ~ 2 1
playsound entity.illusioner.mirror_move player @a ~ ~ ~ 2 1
tp @p @s
execute as @p at @s run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/teleport_effect