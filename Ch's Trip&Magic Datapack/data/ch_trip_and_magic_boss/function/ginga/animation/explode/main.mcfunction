scoreboard players add @s ch_tm_bosses_explotion_tick 1
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1}] at @e[tag=ch_tm.player.target.ginunga] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ch_tm_bosses_ginga_explotion_before"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1}] at @e[tag=ch_tm.player.target.ginunga] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ch_tm_bosses_ginga_explotion_before_2"]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1}] at @e[tag=ch_tm.player.target.ginunga] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ch_tm_bosses_ginga_explotion_before"],Rotation:[180f,0f]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1}] at @e[tag=ch_tm.player.target.ginunga] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ch_tm_bosses_ginga_explotion_before_2"],Rotation:[180f,0f]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1}] at @e[tag=ch_tm.player.target.ginunga] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ch_tm_bosses_ginga_explotion_before"],Rotation:[90f,0f]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1}] at @e[tag=ch_tm.player.target.ginunga] run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["ch_tm_bosses_ginga_explotion_before_2"],Rotation:[270f,0f]}
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1..45}] as @e[tag=ch_tm_bosses_ginga_explotion_before] at @s run function ch_trip_and_magic_boss:ginga/animation/explode/prep
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1..45}] as @e[tag=ch_tm_bosses_ginga_explotion_before_2] at @s run function ch_trip_and_magic_boss:ginga/animation/explode/prep_2
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1..45}] as @e[tag=ch_tm_bosses_ginga_explotion_before_2] at @s run playsound block.note_block.chime player @a[distance=..5,limit=1,sort=nearest,] ~ ~ ~ 1 2
execute if entity @s[scores={ch_tm_bosses_explotion_tick=1..45}] as @e[tag=ch_tm_bosses_ginga_explotion_before_2] at @s run playsound block.note_block.harp player @a[distance=..5,limit=1,sort=nearest,] ~ ~ ~ 1 2
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run playsound entity.generic.explode hostile @a ~ ~0.5 ~ 1 1
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run playsound entity.warden.attack_impact hostile @a ~ ~0.5 ~ 1 1
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run playsound entity.warden.sonic_boom hostile @a ~ ~0.5 ~ 1 2
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle explosion_emitter ~ ~ ~ 0.2 0.2 0.2 0 2
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle soul_fire_flame ~ ~ ~ 0 0 0 0.15 100 force
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle crit ~ ~ ~ 2.5 2.5 2.5 0. 300 force
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle flame ~ ~ ~ 0 0 0 0.15 200 force
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle smoke ~ ~ ~ 0 0 0 0.3 200 force
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle large_smoke ~ ~ ~ 0 0 0 0.3 200 force
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] at @e[tag=ch_tm_bosses_ginga_explotion_before] run particle campfire_cosy_smoke ~ ~ ~ 0 0 0 0.045 10 force
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45}] as @e[tag=ch_tm_bosses_ginga_explotion_before] at @s as @e[distance=..5,type=!#ch_trip_and_magic:cannot_hurt_entities] run damage @s 10 ch_trip_and_magic:entity/ginunga/explotion by @n[tag=ch_trip_and_magic_bosses_intaract_ginga]
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45..}] run kill @e[tag=ch_tm_bosses_ginga_explotion_before_2]
execute if entity @s[scores={ch_tm_bosses_explotion_tick=45..}] run kill @e[tag=ch_tm_bosses_ginga_explotion_before]
execute if entity @s[scores={ch_tm_bosses_explotion_tick=70..}] run tag @n[tag=aj.ginunga.root] remove ch_tm.boss.ginunga.action.explode
execute if entity @s[scores={ch_tm_bosses_explotion_tick=70..}] run tag @n[tag=aj.ginunga.root] remove ch_tm_bosses_ginga_during_animation
execute if entity @s[scores={ch_tm_bosses_explotion_tick=70..}] run tag @n[tag=aj.ginunga.root] remove ch_tm_bosses_ginga_during_animate_cooldown
scoreboard players reset @s[scores={ch_tm_bosses_explotion_tick=70..}] ch_tm_bosses_explotion_tick
