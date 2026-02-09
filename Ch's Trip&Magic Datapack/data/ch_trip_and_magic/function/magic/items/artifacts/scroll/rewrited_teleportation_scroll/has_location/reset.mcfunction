playsound entity.zombie.infect player @a ~ ~ ~ 1 1
execute anchored eyes run particle ash ^ ^ ^0.1 0.2 0.2 0.2 0.1 20 force
tellraw @s {translate:"notice.teleport.canceled"}
tag @s remove ch_tm_re_teleportation_scroll_tick
scoreboard players reset @s ch_tm_re_teleportation_scroll_tick