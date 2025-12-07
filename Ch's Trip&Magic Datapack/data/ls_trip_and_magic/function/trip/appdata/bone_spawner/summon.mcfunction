particle poof ~ ~ ~ 0.2 1 0.2 0. 20 force
playsound entity.skeleton.ambient hostile @a ~ ~ ~ 1 0.5
summon skeleton ~ ~ ~ {DeathLootTable:"ls_trip_and_magic:entities/bone_spawner_skeleton",drop_chances:{mainhand:0.05},equipment:{mainhand:{id:"minecraft:iron_axe",count:1}},Tags:["ls_tm_trip_mobs"],attributes:[{id:"minecraft:attack_damage",base:-7}]}
item modify entity @n[type=skeleton] weapon.mainhand ls_trip_and_magic:weapons/undead_killer
