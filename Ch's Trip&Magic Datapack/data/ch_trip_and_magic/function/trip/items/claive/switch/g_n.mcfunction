item modify entity @s contents ch_trip_and_magic:weapons/claive/glaive
item modify entity @s contents ch_trip_and_magic:weapons/claive/glaive_standby
execute store result entity @s Item.components."minecraft:damage" int 1 positioned ~ ~-1000 ~ run data get entity @p equipment.offhand.components."minecraft:damage" 1
execute positioned ~ ~-1000 ~ run item replace entity @p weapon.offhand from entity @p weapon.mainhand
execute positioned ~ ~-1000 ~ run item replace entity @p weapon.mainhand from entity @s contents
playsound block.wool.place player @a ~ ~-1000 ~ 1 1.25

kill @s