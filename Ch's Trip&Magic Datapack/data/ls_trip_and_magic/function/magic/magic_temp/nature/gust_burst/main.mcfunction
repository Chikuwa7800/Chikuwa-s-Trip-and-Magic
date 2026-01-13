scoreboard players add @s ls_tm_magic_gust_tick 1
execute if entity @s[scores={ls_tm_magic_gust_tick=1}] run function ls_trip_and_magic:magic/magic_temp/nature/gust_burst/m_p
execute if entity @s[scores={ls_tm_magic_gust_tick=10}] run function ls_trip_and_magic:magic/magic_temp/nature/gust_burst/m_s
execute if entity @s[scores={ls_tm_magic_gust_tick=20}] run function ls_trip_and_magic:magic/magic_temp/nature/gust_burst/m_last
execute if entity @s[scores={ls_tm_magic_gust_tick=20..}] run tag @s remove ch_tm_gust_pl
execute if entity @s[scores={ls_tm_magic_gust_tick=20..}] run scoreboard players set @s ls_tm_magic_gust_tick 0