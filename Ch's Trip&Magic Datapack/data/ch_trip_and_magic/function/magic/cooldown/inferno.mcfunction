scoreboard players add @s ch_tm_magic_inferno_cooldown 1
scoreboard players operation @s ch_tm_magic_inferno_cooldown += @s ch_tm_magic_cooldown_speed_up
execute as @s[scores={ch_tm_magic_inferno_cooldown=1320..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.fire.lv5"}
tag @s[scores={ch_tm_magic_inferno_cooldown=1320..}] remove ch_tm_magic_inferno_cooldown
scoreboard players set @s[scores={ch_tm_magic_inferno_cooldown=1320..}] ch_tm_magic_inferno_cooldown 0