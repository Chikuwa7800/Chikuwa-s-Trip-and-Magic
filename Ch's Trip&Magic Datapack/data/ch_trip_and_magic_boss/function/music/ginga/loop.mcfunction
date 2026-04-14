stopsound @s ui trip_magic:music.battle.ginunga.loop
execute store result score @s ch_tm_bosses_music_start run stopwatch query ch_tm:boss_music 100
scoreboard players reset @s ch_tm_bosses_music_tick
tag @s remove ch_tm.boss.music.ginunga.intro
playsound trip_magic:music.battle.ginunga.loop ui @s ~ ~ ~ 10000000 1 1