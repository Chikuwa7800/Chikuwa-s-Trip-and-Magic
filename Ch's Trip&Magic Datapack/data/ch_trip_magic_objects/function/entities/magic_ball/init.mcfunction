## owner
execute store result score @n[type=block_display,tag=ch_tm_magic_ball] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id

tag @s remove ch_tm.magicball.summoned
tag @s add ch_tm.magicball.tick
