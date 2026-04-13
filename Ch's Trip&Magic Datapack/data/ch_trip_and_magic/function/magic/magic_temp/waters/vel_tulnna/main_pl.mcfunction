scoreboard players add @s ch_tm_magic_tulnna_tick 1
effect give @s slowness 1 2 true
execute if score @s ch_tm_magic_tulnna_tick matches 1 run playsound trip_magic:magic.water.vel_tulnna.prep player @a ~ ~ ~ 2 1
execute if score @s ch_tm_magic_tulnna_tick matches 1..5 anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/prep_1
execute if score @s ch_tm_magic_tulnna_tick matches 5..9 anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/prep_2
execute if score @s ch_tm_magic_tulnna_tick matches 10.. run playsound trip_magic:magic.water.vel_tulnna.shot player @a ~ ~ ~ 3 1
execute if score @s ch_tm_magic_tulnna_tick matches 10.. anchored eyes positioned ^ ^ ^0.001 run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/shot
