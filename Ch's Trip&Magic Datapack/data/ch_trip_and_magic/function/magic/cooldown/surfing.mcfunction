scoreboard players add @s ch_tm_magic_surfing_cooldown 1
execute as @s[scores={ch_tm_magic_surfing_cooldown=150..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.water.lv2"}
tag @s[scores={ch_tm_magic_surfing_cooldown=150..}] remove ch_tm_magic_surfing_cooldown
scoreboard players set @s[scores={ch_tm_magic_surfing_cooldown=150..}] ch_tm_magic_surfing_cooldown 0