playsound trip_magic:block.magic_crafting_table.ice player @a ~ ~ ~
playsound trip_magic:magic.ice.verbel_glaicis.start player @a ~ ~ ~ 3 1
execute anchored eyes run particle snowflake ^ ^ ^0.1 0.25 0.25 0.25 0.1 10 force
execute anchored eyes positioned ^ ^ ^1 run function ch_effect_temp:vfx/spike/play