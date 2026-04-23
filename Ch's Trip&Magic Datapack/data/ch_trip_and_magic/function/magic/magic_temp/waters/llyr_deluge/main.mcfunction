scoreboard players add @s ch_tm_magic_llyr_tick 1
execute if score @s ch_tm_magic_llyr_tick matches 1 summon item_display run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/init
execute as @n[type=item_display,tag=ch_tm_llyr] at @s run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/bubble with entity @s data
particle dust{color:3225597,scale:1} ~ ~ ~ 1 1 1 0 20
particle bubble ~ ~ ~ 1.5 1.5 1.5 0 20
execute if score @s ch_tm_magic_llyr_tick matches 21.. run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/end
