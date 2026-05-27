scoreboard players add @s ch_tm_magic_sauer_cooldown 1
scoreboard players operation @s ch_tm_magic_sauer_cooldown += @s ch_tm_magic_cooldown_speed_up
execute as @s[scores={ch_tm_magic_sauer_cooldown=600..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.nature.lv4"}
tag @s[scores={ch_tm_magic_sauer_cooldown=600..}] remove ch_tm_magic_sauer_cooldown
scoreboard players set @s[scores={ch_tm_magic_sauer_cooldown=600..}] ch_tm_magic_sauer_cooldown 0