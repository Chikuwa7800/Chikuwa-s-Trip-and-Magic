playsound trip_magic:block.magic_crafting_table.nature player @a ~ ~ ~
execute anchored eyes positioned ^ ^ ^-1 run function ch_effect_temp:vfx/wood_spike/play
execute anchored eyes run particle falling_spore_blossom ^ ^ ^0.1 0.25 0.25 0.25 0.1 10 force