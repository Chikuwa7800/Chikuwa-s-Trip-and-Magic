
scoreboard players add @e[tag=ch_tm.boss.music] ch_tm_bosses_music_tick 1
execute as @e[tag=ch_tm.boss.music,tag=ch_tm.music.audexm,tag=ch_tm.music.audexm.intro,scores={ch_tm_bosses_music_tick=482..}] at @s run function ch_trip_and_magic_boss:music/audexm/loop
execute as @e[tag=ch_tm.boss.music,tag=ch_tm.music.audexm,scores={ch_tm_bosses_music_tick=646..}] at @s run function ch_trip_and_magic_boss:music/audexm/loop

execute as @e[tag=ch_tm.boss.music,tag=ch_tm.boss.music.ginunga,tag=ch_tm.boss.music.ginunga.intro,scores={ch_tm_bosses_music_tick=82..}] at @s run function ch_trip_and_magic_boss:music/ginga/loop
execute as @e[tag=ch_tm.boss.music,tag=ch_tm.boss.music.ginunga,scores={ch_tm_bosses_music_tick=1883..}] at @s run function ch_trip_and_magic_boss:music/ginga/loop
execute at @e[tag=ch_tm.boss.music] run stopsound @a[distance=..48] music
