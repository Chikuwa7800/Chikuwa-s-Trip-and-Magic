scoreboard players add @s ch_tm_magic_asgars_cooldown 1
scoreboard players operation @s ch_tm_magic_asgars_cooldown += @s ch_tm_magic_cooldown_speed_up
execute as @s[scores={ch_tm_magic_asgars_cooldown=1400..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.bolt.lv5"}
tag @s[scores={ch_tm_magic_asgars_cooldown=1400..}] remove ch_tm_magic_asgars_cooldown
scoreboard players set @s[scores={ch_tm_magic_asgars_cooldown=1400..}] ch_tm_magic_asgars_cooldown 0