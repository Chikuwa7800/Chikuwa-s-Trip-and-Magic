# 6
# 12
# 34
particle electric_spark ~ ~ ~ 0.25 0.1 0.25 0.25 3

scoreboard players add @s ch_tm_tick 1
execute if score @s ch_tm_tick matches 12 run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/crush_0
execute if score @s ch_tm_tick matches 12..22 run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/crush_1_prep
execute if score @s ch_tm_tick matches 22 run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/crush_1
execute if score @s ch_tm_tick matches 22..32 run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/crush_2_prep
execute if score @s ch_tm_tick matches 32 run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/crush_2
