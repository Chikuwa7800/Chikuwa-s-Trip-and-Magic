scoreboard players add @s ch_tm_magic_llyr_cooldown 1
execute as @s[scores={ch_tm_magic_llyr_cooldown=480..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.water.lv4"}
tag @s[scores={ch_tm_magic_llyr_cooldown=480..}] remove ch_tm_magic_llyr_cooldown
scoreboard players set @s[scores={ch_tm_magic_llyr_cooldown=480..}] ch_tm_magic_llyr_cooldown 0