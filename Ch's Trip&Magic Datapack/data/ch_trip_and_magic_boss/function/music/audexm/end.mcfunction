stopsound @s record trip_magic:music.audexm.loop
stopsound @s record trip_magic:music.audexm.intro
playsound trip_magic:music.audexm.end record @s ~ ~ ~ 3 1
scoreboard players reset @s ch_tm_bosses_music_tick
tag @s remove ch_tm.music.audexm
tag @s remove ch_tm.boss.music