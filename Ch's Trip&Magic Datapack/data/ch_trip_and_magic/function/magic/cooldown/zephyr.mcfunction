scoreboard players add @s ch_tm_magic_zephyr_cooldown 1
execute as @s[scores={ch_tm_magic_zephyr_cooldown=30..}] at @s run function ch_trip_and_magic:magic/cooldown_end_no_notice
tag @s[scores={ch_tm_magic_zephyr_cooldown=30..}] remove ch_tm_magic_zephyr_cooldown
scoreboard players set @s[scores={ch_tm_magic_zephyr_cooldown=30..}] ch_tm_magic_zephyr_cooldown 0