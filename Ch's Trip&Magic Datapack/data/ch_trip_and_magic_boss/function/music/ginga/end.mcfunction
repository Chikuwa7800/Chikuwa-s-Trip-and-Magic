stopsound @s ui trip_magic:music.battle.ginunga.loop
stopsound @s ui trip_magic:music.battle.ginunga.start
playsound trip_magic:music.battle.ginunga.end ui @s ~ ~ ~ 10000000 1 1
scoreboard players reset @s ch_tm_bosses_music_start
scoreboard players reset @s ch_tm_bosses_music_tick
tag @s remove ch_tm.boss.music.ginunga
tag @s remove ch_tm.boss.music