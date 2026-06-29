scoreboard players add @s ch_tm_tick 1
execute if score @s ch_tm_tick matches 1 run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/prep
execute if score @s ch_tm_tick matches 15 run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/prep
execute if score @s ch_tm_tick matches 30 run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/prep
execute if score @s ch_tm_tick matches 40 run playsound entity.warden.sonic_charge player @a ~ ~ ~ 4 1.5
execute if score @s ch_tm_tick matches 45 run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/prep
execute if score @s ch_tm_tick matches 55 run particle flash{color:-1} ~ ~ ~ 2 2 2 0 10
execute if score @s ch_tm_tick matches 60 run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/explotion