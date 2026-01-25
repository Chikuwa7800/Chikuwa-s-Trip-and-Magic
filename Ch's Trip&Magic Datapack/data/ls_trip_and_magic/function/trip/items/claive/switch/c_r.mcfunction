item replace entity @s weapon.offhand from entity @s weapon.mainhand
loot replace entity @s weapon.mainhand loot ls_trip_and_magic:item/weapons/craive
item modify entity @s weapon.mainhand ls_trip_and_magic:weapons/claive/crossbow
item modify entity @s weapon.mainhand ls_trip_and_magic:weapons/claive/cross_ready

playsound item.crossbow.quick_charge_3 player @a ~ ~ ~ 1 1
playsound item.crossbow.loading_start player @a ~ ~ ~ 1 1