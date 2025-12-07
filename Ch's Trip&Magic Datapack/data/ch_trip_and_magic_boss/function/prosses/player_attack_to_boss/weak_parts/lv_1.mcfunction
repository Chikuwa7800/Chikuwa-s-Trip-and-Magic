scoreboard players set #ch_tm_bosses_hundred_times ch_tm_bosses_dummy 100
scoreboard players set #ch_tm_bosses_add_damage ch_tm_bosses_dummy 110
scoreboard players operation #ch_tm_bosses_hitbox_health ch_tm_bosses_dummy *= #ch_tm_bosses_add_damage ch_tm_bosses_dummy
scoreboard players operation #ch_tm_bosses_hitbox_health ch_tm_bosses_dummy /= #ch_tm_bosses_hundred_times ch_tm_bosses_dummy
scoreboard players operation @s ch_tm_bosses_health += #ch_tm_bosses_hitbox_health ch_tm_bosses_dummy
playsound entity.player.attack.strong player @a ~ ~ ~ 1 0.5
execute at @n[tag=ch_trip_and_magic_bosses_hurted,tag=ch_trip_and_magic_bosses_intaract_weak_parts] run particle crit ~ ~ ~ 0.25 0.25 0.25 0.1 5