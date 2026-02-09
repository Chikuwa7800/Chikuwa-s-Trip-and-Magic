tag @s add ch_tm_evoker_have_staff
data merge entity @s {DeathLootTable:"ch_trip_and_magic:entities/evoker"}
item replace entity @s weapon.mainhand with acacia_button
item modify entity @s weapon.mainhand ch_trip_and_magic:w_stick
item modify entity @s weapon.mainhand ch_trip_and_magic:weapons/fangs_staff