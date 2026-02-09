#lv3 wax_off
#lv4 wax_on
#lv5 scrape
#lv6 flash
tag @s add ch_tm_spell_charging
scoreboard players add @s ch_tm_spell_charge 1
execute if score @s ch_tm_spell_charge matches 10 if predicate ch_trip_and_magic:magic/spell_book/level/3 run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/_detect
execute if score @s ch_tm_spell_charge matches 20 if predicate ch_trip_and_magic:magic/spell_book/level/4 run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_4/_detect
execute if score @s ch_tm_spell_charge matches 30 if predicate ch_trip_and_magic:magic/spell_book/level/5 run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_5/_detect