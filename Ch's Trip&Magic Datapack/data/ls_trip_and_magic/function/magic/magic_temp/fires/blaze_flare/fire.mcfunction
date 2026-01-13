particle lava ^ ^ ^-0.5 0 0 0 0. 5 force
particle smoke ^ ^ ^-0.5 0 0 0 0.1 5 force
particle crit ^ ^ ^-0.5 0.5 0.5 0.5 0.2 20 force
particle enchant ^ ^ ^-0.5 0 0 0 1 20 force
particle large_smoke ^ ^ ^-0.5 0 0 0 0.05 20 force

playsound entity.firework_rocket.blast player @a ~ ~ ~ 1 1
playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 1 1

execute if block ~ ~-0.25 ~ ice run playsound block.fire.extinguish block @a ~ ~ ~ 1 1
execute if block ~ ~-0.25 ~ ice run setblock ~ ~-0.25 ~ water
execute if block ~ ~-0.25 ~ packed_ice run playsound block.fire.extinguish block @a ~ ~ ~ 1 1
execute if block ~ ~-0.25 ~ packed_ice run setblock ~ ~-0.25 ~ water
execute if block ~ ~-0.25 ~ blue_ice run playsound block.fire.extinguish block @a ~ ~ ~ 1 1
execute if block ~ ~-0.25 ~ blue_ice run setblock ~ ~-0.25 ~ water
execute if block ~ ~-0.25 ~ frosted_ice run playsound block.fire.extinguish block @a ~ ~ ~ 1 1
execute if block ~ ~-0.25 ~ frosted_ice run setblock ~ ~-0.25 ~ water

function ls_trip_and_magic:magic/magic_temp/hit

kill @n[type=area_effect_cloud]
kill @s