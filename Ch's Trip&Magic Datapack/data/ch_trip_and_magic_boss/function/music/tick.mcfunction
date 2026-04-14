execute store result score @s ch_tm_bosses_music_tick run stopwatch query ch_tm:boss_music 100
execute as @s run scoreboard players operation @s ch_tm_bosses_music_tick -= @s ch_tm_bosses_music_start

execute as @s[tag=ch_tm.music.audexm,tag=ch_tm.music.audexm.intro,scores={ch_tm_bosses_music_tick=2410..}] run function ch_trip_and_magic_boss:music/audexm/loop
execute as @s[tag=ch_tm.music.audexm,scores={ch_tm_bosses_music_tick=3230..}] run function ch_trip_and_magic_boss:music/audexm/loop

execute as @s[tag=ch_tm.boss.music.ginunga,tag=ch_tm.boss.music.ginunga.intro,scores={ch_tm_bosses_music_tick=400..}] run function ch_trip_and_magic_boss:music/ginga/loop
execute as @s[tag=ch_tm.boss.music.ginunga,scores={ch_tm_bosses_music_tick=9571..}] run function ch_trip_and_magic_boss:music/ginga/loop

stopsound @s music
