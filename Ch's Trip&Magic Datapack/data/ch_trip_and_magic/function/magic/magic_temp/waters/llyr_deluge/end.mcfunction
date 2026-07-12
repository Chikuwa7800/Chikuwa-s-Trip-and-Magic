tag @s remove ch_tm_llyr_pl
scoreboard players reset @s ch_tm_magic_llyr_tick
attribute @s movement_speed base reset
attribute @s jump_strength base reset
scoreboard players remove @s ch_tm_magic_casting 1
$execute if score @s ch_tm_magic_llyr_tick matches 21.. run kill @e[type=item_display,tag=ch_tm_llyr,scores={ch_tm_entity_id=$(id)}]