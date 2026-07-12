scoreboard players add @s ch_tm_tick 1
execute if score @s ch_tm_tick matches 1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/blast_prep
execute if score @s ch_tm_tick matches 5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/blast with entity @s data

execute if score @s ch_tm_tick matches 5 positioned ^ ^ ^1.5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/second_prep
execute if score @s ch_tm_tick matches 10 positioned ^ ^ ^1.5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/second_blast

execute if score @s ch_tm_tick matches 10 positioned ^ ^ ^3 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/third_prep
execute if score @s ch_tm_tick matches 15 positioned ^ ^ ^3 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/third_blast

execute if score @s ch_tm_tick matches 15 positioned ^ ^ ^4.5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/fourth_prep
execute if score @s ch_tm_tick matches 20 positioned ^ ^ ^4.5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/fourth_blast

execute if score @s ch_tm_tick matches 20 positioned ^ ^ ^6 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/fifth_prep
execute if score @s ch_tm_tick matches 25 positioned ^ ^ ^6 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/fifth_blast