tag @s add ch_tm_trip_firld_boss_husk_hammer
scoreboard players set @s ls_trip_boss_tick_ex 0
data merge entity @s {Motion:[0.0,0.25,0.0]}
playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 2