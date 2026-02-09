scoreboard players add @s ch_tm_magic_gust_cooldown 1
execute as @s[scores={ch_tm_magic_gust_cooldown=60..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.nature.lv3"}
tag @s[scores={ch_tm_magic_gust_cooldown=60..}] remove ch_tm_magic_gust_cooldown
scoreboard players set @s[scores={ch_tm_magic_gust_cooldown=60..}] ch_tm_magic_gust_cooldown 0