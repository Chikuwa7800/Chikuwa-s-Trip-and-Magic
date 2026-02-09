scoreboard players add @s ch_tm_magic_screen_cooldown 1
execute as @s[scores={ch_tm_magic_screen_cooldown=100..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.bolt.lv2"}
tag @s[scores={ch_tm_magic_screen_cooldown=100..}] remove ch_tm_magic_screen_cooldown
scoreboard players set @s[scores={ch_tm_magic_screen_cooldown=100..}] ch_tm_magic_screen_cooldown 0