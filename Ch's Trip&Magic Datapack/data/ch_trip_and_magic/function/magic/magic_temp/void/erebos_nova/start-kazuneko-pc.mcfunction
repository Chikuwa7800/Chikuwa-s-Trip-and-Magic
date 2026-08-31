tag @s add ch_tm_magic_erebos_pl
playsound trip_magic:magic.void.erebos_nova.start player @a ~ ~ ~ 2 0
execute rotated 0 0 positioned ~ ~ ~ summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 40 20 positioned ~ ~ ~1 summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 60 30 positioned ~ ~ ~-1 summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 250 70 positioned ~1 ~ ~ summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 30 20 positioned ~-1 ~ ~ summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 40 50 positioned ~0.5 ~ ~0.5 summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 40 0 positioned ~0.5 ~ ~-0.5 summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 150 70 positioned ~-0.5 ~ ~0.5 summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 20 40 positioned ~-0.5 ~ ~-0.5 summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 45 45 positioned ~ ~1 ~ summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
execute rotated 45 45 positioned ~ ~-1 ~ summon block_display run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/abyss_init
tag @s remove ch_tm_magic_erebos_pl