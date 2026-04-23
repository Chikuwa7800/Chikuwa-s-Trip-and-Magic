scoreboard players add @s ch_tm_magic_verbel_cooldown 1
execute as @s[scores={ch_tm_magic_verbel_cooldown=480..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.ice.lv5"}
tag @s[scores={ch_tm_magic_verbel_cooldown=480..}] remove ch_tm_magic_verbel_cooldown
scoreboard players set @s[scores={ch_tm_magic_verbel_cooldown=480..}] ch_tm_magic_verbel_cooldown 0