scoreboard players add @s ch_tm_tick 1
$particle dust{color:[0.443,0.639,0.043],scale:1} ~ ~ ~ 0.25 0.25 0.25 0 2 normal @a[scores={ch_tm_entity_id=$(owner)}]
$particle end_rod ~ ~ ~ 0.25 0.25 0.25 0 2 normal @a[scores={ch_tm_entity_id=$(owner)}]
execute if score @s ch_tm_tick matches 200.. run tag @s add ch_tm_magic_sauer_estrap_fuse
$execute as @e[tag=!ch_tm_magic_sauer_estrap,type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..2.5] unless score @s ch_tm_entity_id matches $(owner) as @n[tag=ch_tm_magic_sauer_estrap,scores={ch_tm_entity_id=$(owner)}] run tag @s add ch_tm_magic_sauer_estrap_fuse
scoreboard players add @s[tag=ch_tm_magic_sauer_estrap_fuse] ch_tm_magic_erosion_tick_dummy 1
execute if score @s ch_tm_magic_erosion_tick_dummy matches 1 run playsound entity.tnt.primed player @a ~ ~ ~ 1 1
execute if score @s ch_tm_magic_erosion_tick_dummy matches 1..10 run particle dust{color:11947271,scale:2} ~ ~ ~ 0.25 0.25 0.25 0 5
execute if score @s ch_tm_magic_erosion_tick_dummy matches 1..15 run particle end_rod ~ ~ ~ 0.25 0.25 0.25 0 5
execute if score @s ch_tm_magic_erosion_tick_dummy matches 1..15 run particle dust{color:[0.443,0.639,0.043],scale:1} ~ ~ ~ 0.25 0.25 0.25 0 5
execute if score @s ch_tm_magic_erosion_tick_dummy matches 20.. run function ch_trip_and_magic:magic/magic_temp/nature/sauer_estrap/explotion with entity @s data