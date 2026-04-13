tag @s add ch_tm.boss.music.ginunga
tag @s add ch_tm.boss.music
tag @s add ch_tm.boss.music.ginunga.intro
stopsound @s music
playsound trip_magic:music.battle.ginunga.intro record @s ~ ~ ~ 3 1 1
execute store result score @s ch_tm_bosses_music_start run stopwatch query ch_tm:boss_music 100