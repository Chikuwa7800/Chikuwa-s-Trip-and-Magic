scoreboard players add @s ls_tm_magic_screen_cooldown 1
execute as @s[scores={ls_tm_magic_screen_cooldown=100..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.bolt.lv2"}
tag @s[scores={ls_tm_magic_screen_cooldown=100..}] remove ls_tm_magic_screen_cooldown
scoreboard players set @s[scores={ls_tm_magic_screen_cooldown=100..}] ls_tm_magic_screen_cooldown 0