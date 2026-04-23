scoreboard players add @s ch_tm_magic_gust_tick 1
execute if entity @s[scores={ch_tm_magic_gust_tick=1}] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/m_p
execute if entity @s[scores={ch_tm_magic_gust_tick=10}] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/m_s
execute if entity @s[scores={ch_tm_magic_gust_tick=20}] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/m_last
execute if entity @s[scores={ch_tm_magic_gust_tick=20..}] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/reset
