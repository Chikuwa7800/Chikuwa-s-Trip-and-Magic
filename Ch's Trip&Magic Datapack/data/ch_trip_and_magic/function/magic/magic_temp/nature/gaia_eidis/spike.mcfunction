particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1 force
particle firework ~ ~ ~ 0.0 0.0 0.0 0.25 10 force
particle dust{color:3682087,scale:2} ~ ~ ~ 0.25 0.125 0.25 0.25 10
playsound trip_magic:magic.nature.gaia_eidis.explode player @a ~ ~ ~ 1 1
playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 1 1
summon marker ~ ~ ~ {Tags:["ch_gaia_random"]}
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1 ^ ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1 ^ ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1 ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1 ^ ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1 ^ ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1 ^ ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1.5 ^-0.5 ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1.5 ^-0.5 ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1.5 ^-0.5 ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1.5 ^-0.5 ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1.5 ^-0.5 ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1.5 ^-0.5 ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^0.9 ^1.2 ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^0.9 ^1.2 ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^0.9 ^1.2 ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-0.9 ^1.2 ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-0.9 ^1.2 ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-0.9 ^1.2 ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1.2 ^-1.2 ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1.2 ^-1.2 ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^1.2 ^-1.2 ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
execute store result entity @n[tag=ch_gaia_random] data."yaw" int 1 run random value -10..10
execute store result entity @n[tag=ch_gaia_random] data."pitch" int 1 run random value -10..10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1.2 ^-1.2 ^-1 run function ch_effect_temp:effect/gaia_eidis/start with entity @n[tag=ch_gaia_random] data
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1.2 ^-1.2 ^-1 run particle minecraft:block{block_state:oak_log} ~ ~ ~ 0.25 0.0 0.25 0.025 10
execute anchored eyes positioned ~ ~-0.5 ~ positioned ^-1.2 ^-1.2 ^-1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/spear_rotation with entity @n[tag=ch_gaia_random] data
kill @n[tag=ch_gaia_random]