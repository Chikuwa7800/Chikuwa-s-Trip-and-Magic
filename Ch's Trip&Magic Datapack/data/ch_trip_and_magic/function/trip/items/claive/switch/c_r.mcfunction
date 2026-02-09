item modify entity @s contents ch_trip_and_magic:weapons/claive/crossbow
item modify entity @s contents ch_trip_and_magic:weapons/claive/cross_ready
execute store result entity @s Item.components."minecraft:damage" int 1 positioned ~ ~-1000 ~ run data get entity @p equipment.offhand.components."minecraft:damage" 1
execute positioned ~ ~-1000 ~ run item replace entity @p weapon.offhand from entity @p weapon.mainhand
execute positioned ~ ~-1000 ~ run item replace entity @p weapon.mainhand from entity @s contents

playsound item.crossbow.quick_charge_3 player @a ~ ~-1000 ~ 1 1
playsound item.crossbow.loading_start player @a ~ ~-1000 ~ 1 1

kill @s