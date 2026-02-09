scoreboard players add @s ch_tm_magic_aqua_cooldown 1
execute as @s[scores={ch_tm_magic_aqua_cooldown=10..}] at @s run function ch_trip_and_magic:magic/cooldown_end_no_notice
tag @s[scores={ch_tm_magic_aqua_cooldown=10..}] remove ch_tm_magic_aqua_cooldown
scoreboard players set @s[scores={ch_tm_magic_aqua_cooldown=10..}] ch_tm_magic_aqua_cooldown 0