execute anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/entities/bullet/summon {"speed": 0.5,"damage": 5,"damage_type":"void_lv1","gravity": 2147483647,"rerun":2,"hit_ground": "ch_trip_and_magic:magic/magic_temp/void/abyss_whisper/abyss","hit": "ch_trip_and_magic:magic/magic_temp/void/abyss_whisper/hit","tick": "ch_trip_and_magic:magic/magic_temp/void/abyss_whisper/main","addition_effect":"ch_trip_and_magic:magic/effect/abyss/start","model":"minecraft:air"}

playsound block.sculk_sensor.clicking player @a ~ ~ ~ 1 1.5
playsound entity.ender_eye.death player @a ~ ~ ~ 1 1
playsound entity.enderman.teleport player @a ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^ ^0.001 run particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.1 50 force
execute anchored eyes positioned ^ ^ ^0.001 run particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 0. 10 force

