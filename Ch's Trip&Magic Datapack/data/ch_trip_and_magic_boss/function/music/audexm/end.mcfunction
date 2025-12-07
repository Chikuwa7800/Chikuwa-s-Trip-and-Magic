stopsound @a record trip_magic:music.audexm.loop
stopsound @a record trip_magic:music.audexm.intro
playsound trip_magic:music.audexm.end record @a ~ ~ ~ 3 1
scoreboard players reset @s ch_tm_bosses_music_tick
tag @s remove ch_tm.music.audexm
tag @s remove ch_tm.boss.music