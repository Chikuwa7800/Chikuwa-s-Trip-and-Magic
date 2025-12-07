scoreboard players add @s ls_tm_magic_aqua_cooldown 1
execute as @s[scores={ls_tm_magic_aqua_cooldown=10..}] at @s run function ls_trip_and_magic:magic/cooldown_end_no_notice
tag @s[scores={ls_tm_magic_aqua_cooldown=10..}] remove ls_tm_magic_aqua_cooldown
scoreboard players set @s[scores={ls_tm_magic_aqua_cooldown=10..}] ls_tm_magic_aqua_cooldown 0