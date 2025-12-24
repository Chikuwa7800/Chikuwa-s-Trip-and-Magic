data merge entity @s {drop_chances:{mainhand:0,offhand:0,head:0},DeathLootTable:"ls_trip_and_magic:entities/magic_parched"}
item replace entity @s armor.head with acacia_button
item replace entity @s weapon.mainhand with acacia_button
item replace entity @s weapon.offhand with acacia_button
item modify entity @s weapon.mainhand ls_trip_and_magic:bow
item modify entity @s weapon.offhand ls_trip_and_magic:w_stick
item modify entity @s armor.head ls_trip_and_magic:command_block
item modify entity @s weapon.mainhand ls_trip_and_magic:weapons/magic_staff
item modify entity @s weapon.offhand ls_trip_and_magic:weapons/fire_spell_book
item modify entity @s armor.head ls_trip_and_magic:fire_magic_hat
tag @s add ls_tm_trip_mobs_magic_parched
function ls_trip_and_magic:set_entity_id