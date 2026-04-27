execute anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/entities/bullet/summon {"speed": 0.75,"damage": 5,"damage_type":"ice_lv1","gravity": 2147483647,"rerun":3,"hit_ground": "ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/ice","hit": "ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/hit","tick": "ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/main","addition_effect":"ch_trip_and_magic:magic/effect/frost/start","model":"minecraft:air"}

playsound entity.player.hurt_freeze player @a ~ ~ ~ 1 1.5
execute anchored eyes positioned ^ ^ ^0.001 run particle snowflake ~ ~ ~ 0 0 0 0.1 10 force

