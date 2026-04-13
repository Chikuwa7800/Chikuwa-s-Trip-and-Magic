execute store result score @s ch_tm_bosses_music_start run stopwatch query ch_tm:boss_music 100
scoreboard players reset @s ch_tm_bosses_music_tick
tag @s remove ch_tm.music.audexm.intro
playsound trip_magic:music.audexm.loop record @s ~ ~ ~ 3 1