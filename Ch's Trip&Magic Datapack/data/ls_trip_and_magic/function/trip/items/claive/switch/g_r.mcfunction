item replace entity @s weapon.offhand from entity @s weapon.mainhand
loot replace entity @s weapon.mainhand loot ls_trip_and_magic:item/weapons/craive
item modify entity @s weapon.mainhand ls_trip_and_magic:weapons/claive/glaive_ready

playsound block.wool.place player @a ~ ~ ~ 1 1.25
playsound item.crossbow.quick_charge_3 player @a ~ ~ ~ 1 0.75