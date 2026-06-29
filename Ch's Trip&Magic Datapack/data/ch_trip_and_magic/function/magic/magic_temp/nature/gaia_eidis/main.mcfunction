scoreboard players add @s ch_tm_tick 1
execute if score @s ch_tm_tick matches 1 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/blast_prep
execute if score @s ch_tm_tick matches 10 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/blast with entity @s data

execute if score @s ch_tm_tick matches 10 positioned ^ ^ ^1.5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/blast_prep
execute if score @s ch_tm_tick matches 20 positioned ^ ^ ^1.5 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/second_blast

execute if score @s ch_tm_tick matches 20 positioned ^ ^ ^3 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/blast_prep
execute if score @s ch_tm_tick matches 30 positioned ^ ^ ^3 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/third_blast