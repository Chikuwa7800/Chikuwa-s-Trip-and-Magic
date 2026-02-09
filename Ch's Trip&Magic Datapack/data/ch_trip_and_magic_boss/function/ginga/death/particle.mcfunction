execute if entity @s[scores={ch_tm_bosses_death_tick=30}] run summon marker ^ ^ ^ {Tags:["ch_tm_bosses_ginga_death_particle"]}
execute at @e[tag=ch_tm_bosses_ginga_death_particle] if entity @s[scores={ch_tm_bosses_death_tick=35..100}] positioned ~ ~ ~ run particle dust{color:[0.478,0.0,0.294],scale:1} ^ ^ ^ 0.5 0.5 0.5 0. 100 force
execute at @e[tag=ch_tm_bosses_ginga_death_particle] if entity @s[scores={ch_tm_bosses_death_tick=40..105}] positioned ~ ~1 ~ run particle dust{color:[0.325,0.0,0.298],scale:1} ^ ^ ^ 0.5 0.5 0.5 0. 100 force
execute at @e[tag=ch_tm_bosses_ginga_death_particle] if entity @s[scores={ch_tm_bosses_death_tick=45..110}] positioned ~ ~2 ~ run particle dust{color:[0.145,0.0,0.133],scale:1} ^ ^ ^ 0.5 0.5 0.5 0. 100 force
execute if entity @s[scores={ch_tm_bosses_death_tick=110}] run data merge entity @e[tag=ch_tm_bosses_ginunga_death_loot,sort=nearest,limit=1] {Glowing:1b}
execute if entity @s[scores={ch_tm_bosses_death_tick=111..}] run kill @e[tag=ch_tm_bosses_ginga_death_particle]
