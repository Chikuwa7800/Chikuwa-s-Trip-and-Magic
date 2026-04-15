scoreboard players add @s ch_tm_magic_cryo_cooldown 1
execute as @s[scores={ch_tm_magic_cryo_cooldown=640..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.ice.lv4"}
tag @s[scores={ch_tm_magic_cryo_cooldown=640..}] remove ch_tm_magic_cryo_cooldown
scoreboard players set @s[scores={ch_tm_magic_cryo_cooldown=640..}] ch_tm_magic_cryo_cooldown 0