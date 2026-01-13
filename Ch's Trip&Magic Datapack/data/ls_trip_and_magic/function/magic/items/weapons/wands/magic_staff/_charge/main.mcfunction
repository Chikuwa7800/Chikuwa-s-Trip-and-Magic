#lv3 wax_off
#lv4 wax_on
#lv5 scrape
#lv6 flash

scoreboard players add @s ch_tm_spell_charge 1
execute if score @s ch_tm_spell_charge matches 10 run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_3/_detect
execute if score @s ch_tm_spell_charge matches 20 run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_4/_detect
execute if score @s ch_tm_spell_charge matches 30 run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/lv_5/_detect