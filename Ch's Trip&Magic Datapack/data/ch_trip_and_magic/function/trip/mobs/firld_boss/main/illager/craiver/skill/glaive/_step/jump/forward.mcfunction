execute store result score @s ch_tm_motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s ch_tm_motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s ch_tm_motion_z1 run data get entity @s Pos[2] 1000

tp @n[tag=ch_motion_marker] ^ ^ ^1.5

execute store result score @s ch_tm_motion_x2 run data get entity @n[tag=ch_motion_marker] Pos[0] 1000
execute store result score @s ch_tm_motion_y2 run data get entity @n[tag=ch_motion_marker] Pos[1] 1000
execute store result score @s ch_tm_motion_z2 run data get entity @n[tag=ch_motion_marker] Pos[2] 1000

scoreboard players operation @s ch_tm_motion_x2 -= @s ch_tm_motion_x1
scoreboard players operation @s ch_tm_motion_y2 -= @s ch_tm_motion_y1
scoreboard players operation @s ch_tm_motion_z2 -= @s ch_tm_motion_z1

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s ch_tm_motion_x2
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s ch_tm_motion_y2
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s ch_tm_motion_z2

data modify entity @s Motion append value 0.5

kill @n[tag=ch_motion_marker]