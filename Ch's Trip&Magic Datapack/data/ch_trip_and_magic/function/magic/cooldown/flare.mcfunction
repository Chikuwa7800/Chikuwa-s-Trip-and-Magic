scoreboard players add @s ch_tm_magic_flare_cooldown 1
execute as @s[scores={ch_tm_magic_flare_cooldown=20..}] at @s run function ch_trip_and_magic:magic/cooldown_end_no_notice
tag @s[scores={ch_tm_magic_flare_cooldown=20..}] remove ch_tm_magic_flare_cooldown
scoreboard players set @s[scores={ch_tm_magic_flare_cooldown=20..}] ch_tm_magic_flare_cooldown 0