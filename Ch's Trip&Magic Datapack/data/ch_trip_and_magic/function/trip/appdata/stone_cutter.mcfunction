execute if entity @s[type=item] run function ch_trip_and_magic:trip/appdata/break with entity @s Item
execute if entity @s[type=item] run particle crit ~ ~ ~ 0.1 0.1 0.1 0 10
execute if entity @s[type=item] run playsound entity.item.break player @a ~ ~ ~ 1 1
execute if entity @s[type=item] run kill @s

playsound entity.sheep.shear player @a ~ ~ ~ 1 1
damage @s 0.5 ch_trip_and_magic:cut at ~ ~-1 ~