scoreboard players add @s ch_tm_tick 1
particle small_gust ~ ~ ~ 0.25 0.25 0.25 0 4 force
execute if entity @s[scores={ch_tm_tick=20..}] run kill @s