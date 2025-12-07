kill @e[tag=cs_bone_spawner_display,limit=1,sort=nearest]
playsound entity.skeleton.ambient player @a ~ ~ ~ 1 1.5
summon item ~ ~ ~ {Item:{id:"minecraft:bone",count:1}}
execute as @e[tag=cs_bone_spawner_core,limit=1,sort=nearest] at @s unless entity @e[tag=cs_bone_spawner_display,distance=..0.5] run kill @s
advancement revoke @s only ls_trip_and_magic:acshident/bone_spawner/left_click