scoreboard players add @s[tag=!ls_magic_lightning_sword_hit] ls_tm_magic_lightsword_tick 1
scoreboard players add @s[tag=ls_magic_lightning_sword_hit] ls_tm_magic_lightsword_tick_hit 1

particle end_rod ^ ^ ^1 0.75 0.75 0.75 0.1 5 force
particle dust{color:[0.506,0.973,0.988],scale:1} ^ ^ ^1 0.2 0.2 0.2 0.5 10

execute if entity @s[scores={ls_tm_magic_lightsword_tick=20}] run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_tm_magic_lightsword_tick=20}] as @e[tag=ls_magic_lightning_sword_pl,limit=1,sort=nearest] at @s run tp @e[tag=ls_magic_lightning_sword_model,limit=1,sort=nearest,tag=!ls_magic_lightning_sword_hit] ~ ~4 ~ ~ ~5
execute if entity @s[scores={ls_tm_magic_lightsword_tick=60}] run playsound entity.elder_guardian.curse player @a ~ ~ ~ 2 2
execute if entity @s[scores={ls_tm_magic_lightsword_tick=60}] run particle warped_spore ^ ^ ^1 0.5 0.5 0.5 0.1 100 force
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80}] run playsound item.totem.use player @a ~ ~ ~ 1 0.5
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] run tp @s ^ ^ ^3
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run playsound item.trident.throw player @a ~ ~ ~ 3 0.5
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run playsound item.trident.riptide_2 player @a ~ ~ ~ 2 1
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run particle crit ^ ^ ^1 0.5 0.5 0.5 0.1 100 force
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run particle large_smoke ^ ^ ^1 0.5 0.5 0.5 0.1 100 force
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run particle flash{color:[1.0,1.0,1.0,1]} ^ ^ ^1 0 0 0 0 1 force
execute if entity @s[scores={ls_tm_magic_lightsword_tick=140},tag=!ls_magic_lightning_sword_hit] if block ^ ^ ^6 #ls_trip_and_magic:no_collision run kill @s
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run effect give @e[distance=..7] slowness 5 2 true
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140},tag=!ls_magic_lightning_sword_hit] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision as @e[distance=..7] at @s run damage @s 13 ls_trip_and_magic:magic/bolts_lv3_string by @e[tag=ls_magic_lightning_sword_model,limit=1,sort=nearest]
scoreboard players set @s[tag=ls_magic_lightning_sword_hit] ls_tm_magic_lightsword_tick 0
execute if entity @s[scores={ls_tm_magic_lightsword_tick=80..140}] unless block ^ ^ ^6 #ls_trip_and_magic:no_collision run tag @s add ls_magic_lightning_sword_hit
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=20},tag=ls_magic_lightning_sword_hit] run particle dust{color:[0.506,0.973,0.988],scale:2} ^ ^ ^ 0.5 0.5 0.5 0.5 10
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=20},tag=ls_magic_lightning_sword_hit] run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 0.75
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_hit] run playsound item.trident.thunder player @a ~ ~ ~ 2 1
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_hit] run particle flash{color:[1.0,1.0,1.0,1]} ^ ^ ^1 0 0 0 0 1 force
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_hit] run particle dust{color:[0.506,0.973,0.988],scale:4} ^ ^ ^1 1 1 1 0.5 30
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_hit] run particle electric_spark ^ ^ ^1 1 1 1 0.1 100 force
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_model] positioned ^ ^ ^1 rotated ~ ~ run function ls_trip_and_magic:particle/light_ring/summon {"color":"aqua"}
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_model] positioned ^ ^ ^2 rotated ~ ~ run function ls_trip_and_magic:particle/light_ring/summon {"color":"aqua"}
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_model] positioned ^ ^ ^3 rotated ~ ~ run function ls_trip_and_magic:particle/light_ring/summon {"color":"aqua"}
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_hit] run data merge entity @s {brightness:{sky:0,block:0}}
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=50},tag=ls_magic_lightning_sword_hit] as @e[distance=..7] at @s run damage @s 13 ls_trip_and_magic:magic/bolts_lv3 by @e[tag=ls_magic_lightning_sword_hit,limit=1,sort=nearest]
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=80},tag=ls_magic_lightning_sword_hit] run playsound entity.illusioner.mirror_move player @a ~ ~ ~ 2 1
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=80},tag=ls_magic_lightning_sword_hit] run playsound block.beacon.deactivate player @a ~ ~ ~ 2 1
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=80},tag=ls_magic_lightning_sword_hit] positioned ^ ^ ^1 run function ls_trip_and_magic:particle/boom/summon {"color":"aqua"}
execute if entity @s[scores={ls_tm_magic_lightsword_tick_hit=80},tag=ls_magic_lightning_sword_hit] run particle end_rod ^ ^ ^1 1 1 1 0.001 300 force
kill @s[scores={ls_tm_magic_lightsword_tick_hit=80..},tag=ls_magic_lightning_sword_hit]
