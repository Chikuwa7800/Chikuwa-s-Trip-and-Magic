scoreboard players add @s ls_tm_magic_abyss_cooldown 1
execute as @s[scores={ls_tm_magic_abyss_cooldown=30..}] at @s run function ls_trip_and_magic:magic/cooldown_end_no_notice
tag @s[scores={ls_tm_magic_abyss_cooldown=30..}] remove ls_tm_magic_abyss_cooldown
scoreboard players set @s[scores={ls_tm_magic_abyss_cooldown=30..}] ls_tm_magic_abyss_cooldown 0