##ls_tm_trip_mobs_nomal

execute store result score @s ls_tm_random run random value 0..100
execute if entity @s[scores={ls_tm_random=0..79}] run return run tag @s add ls_tm_trip_mobs

data merge entity @s[scores={ls_tm_random=80..100}] {drop_chances:{mainhand:0,offhand:0,head:0},DeathLootTable:"ls_trip_and_magic:entities/magic_parched"}
item replace entity @s[scores={ls_tm_random=80..100}] armor.head with acacia_button
item replace entity @s[scores={ls_tm_random=80..100}] weapon.mainhand with acacia_button
item replace entity @s[scores={ls_tm_random=80..100}] weapon.offhand with acacia_button
item modify entity @s[scores={ls_tm_random=80..100}] weapon.mainhand ls_trip_and_magic:bow
item modify entity @s[scores={ls_tm_random=80..100}] weapon.offhand ls_trip_and_magic:w_stick
item modify entity @s[scores={ls_tm_random=80..100}] armor.head ls_trip_and_magic:command_block
item modify entity @s[scores={ls_tm_random=80..100}] weapon.mainhand ls_trip_and_magic:weapons/magic_staff
item modify entity @s[scores={ls_tm_random=80..100}] weapon.offhand ls_trip_and_magic:weapons/fire_spell_book
item modify entity @s[scores={ls_tm_random=80..100}] armor.head ls_trip_and_magic:fire_magic_hat
tag @s[scores={ls_tm_random=80..100}] add ls_tm_trip_mobs_magic_parched

tag @s add ls_tm_trip_firld_boss

tag @s add ls_tm_trip_mobs