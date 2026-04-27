execute anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/entities/bullet/summon {"speed": 1,"damage": 5,"damage_type":"nature_lv1","gravity": 2147483647,"rerun":4,"hit_ground": "ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/wind","hit": "ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/hit","tick": "ch_trip_and_magic:magic/magic_temp/nature/zephyr_blades/main","addition_effect":"ch_trip_and_magic:magic/effect/cut/start","model":"minecraft:air"}

playsound item.trident.riptide_1 player @a ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^ ^0.001 run particle poof ~ ~ ~ 0 0 0 0.5 10 force
execute anchored eyes positioned ^ ^ ^0.001 run particle spore_blossom_air ~ ~ ~ 0 0 0 0.5 10 force

