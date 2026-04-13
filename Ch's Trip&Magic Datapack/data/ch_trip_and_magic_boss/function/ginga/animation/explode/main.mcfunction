scoreboard players add @s ch_tm_bosses_explotion_tick 1
execute if score @s ch_tm_bosses_explotion_tick matches 1 at @n[tag=ch_tm.player.target.ginunga] run summon item_display ~ ~0.5 ~ {teleport_duration:1,Tags:["ch_tm_bosses_ginga_explotion_before"]}
execute if score @s ch_tm_bosses_explotion_tick matches 1 at @n[tag=ch_tm.player.target.ginunga] run summon item_display ~ ~0.5 ~ {teleport_duration:1,Tags:["ch_tm_bosses_ginga_explotion_before_2"]}
execute if score @s ch_tm_bosses_explotion_tick matches 1 at @n[tag=ch_tm.player.target.ginunga] run summon item_display ~ ~0.5 ~ {teleport_duration:1,Tags:["ch_tm_bosses_ginga_explotion_before"],Rotation:[180f,0f]}
execute if score @s ch_tm_bosses_explotion_tick matches 1 at @n[tag=ch_tm.player.target.ginunga] run summon item_display ~ ~0.5 ~ {teleport_duration:1,Tags:["ch_tm_bosses_ginga_explotion_before_2"],Rotation:[180f,0f]}
execute if score @s ch_tm_bosses_explotion_tick matches 1 at @n[tag=ch_tm.player.target.ginunga] run summon item_display ~ ~0.5 ~ {teleport_duration:1,Tags:["ch_tm_bosses_ginga_explotion_before"],Rotation:[90f,0f]}
execute if score @s ch_tm_bosses_explotion_tick matches 1 at @n[tag=ch_tm.player.target.ginunga] run summon item_display ~ ~0.5 ~ {teleport_duration:1,Tags:["ch_tm_bosses_ginga_explotion_before_2"],Rotation:[270f,0f]}
execute if score @s ch_tm_bosses_explotion_tick matches 1..45 as @e[tag=ch_tm_bosses_ginga_explotion_before] at @s run function ch_trip_and_magic_boss:ginga/animation/explode/prep
execute if score @s ch_tm_bosses_explotion_tick matches 1..45 as @e[tag=ch_tm_bosses_ginga_explotion_before_2] at @s run function ch_trip_and_magic_boss:ginga/animation/explode/prep_2
execute if score @s ch_tm_bosses_explotion_tick matches 1..45 as @e[tag=ch_tm_bosses_ginga_explotion_before_2] run playsound block.note_block.chime player @a[distance=..5,limit=1,sort=nearest] ~ ~ ~ 1 2
execute if score @s ch_tm_bosses_explotion_tick matches 1..45 as @e[tag=ch_tm_bosses_ginga_explotion_before_2] run playsound block.note_block.harp player @a[distance=..5,limit=1,sort=nearest] ~ ~ ~ 1 2
execute if score @s ch_tm_bosses_explotion_tick matches 45 at @e[tag=ch_tm_bosses_ginga_explotion_before] run function ch_trip_and_magic_boss:ginga/animation/explode/effect
execute if score @s ch_tm_bosses_explotion_tick matches 45 as @e[tag=ch_tm_bosses_ginga_explotion_before] at @s as @e[distance=..5,type=!#ch_trip_and_magic:cannot_hurt_entities] run damage @s 10 ch_trip_and_magic:entity/ginunga/explotion by @n[tag=ch_trip_and_magic_bosses_intaract_ginga]
execute if score @s ch_tm_bosses_explotion_tick matches 45.. run kill @e[tag=ch_tm_bosses_ginga_explotion_before_2]
execute if score @s ch_tm_bosses_explotion_tick matches 45.. run kill @e[tag=ch_tm_bosses_ginga_explotion_before]
execute if score @s ch_tm_bosses_explotion_tick matches 70.. run scoreboard players set @s ch_tm_bosses_action 102
scoreboard players reset @s[scores={ch_tm_bosses_explotion_tick=70..}] ch_tm_bosses_explotion_tick
