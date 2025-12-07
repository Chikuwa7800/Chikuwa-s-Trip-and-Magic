execute if entity @a[distance=..5] if entity @s[tag=!ls_tm_bone_spawner_randoms] store result score @s ls_tm_random run random value 1..10
execute if entity @a[distance=..5] if entity @s[scores={ls_tm_random=1..4},tag=!ls_tm_bone_spawner_randoms] run function ls_trip_and_magic:trip/appdata/bone_spawner/summon
execute if entity @a[distance=..5] run tag @s add ls_tm_bone_spawner_randoms
execute as @a[distance=..5] at @s run advancement grant @s only ls_trip_and_magic:roots/trip/bone_spowner