$execute as @e[type=item_display,tag=ch_tm_pyro_wave] if score @s ch_tm_entity_id matches $(owner) run kill @s
tag @s remove ch_tm_pyro_pl
playsound trip_magic:magic.fire.pyro_wave.end player @a ~ ~ ~ 1 1