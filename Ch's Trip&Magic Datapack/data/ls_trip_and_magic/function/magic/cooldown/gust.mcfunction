scoreboard players add @s ls_tm_magic_gust_cooldown 1
execute as @s[scores={ls_tm_magic_gust_cooldown=60..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.nature.lv3"}
tag @s[scores={ls_tm_magic_gust_cooldown=60..}] remove ls_tm_magic_gust_cooldown
scoreboard players set @s[scores={ls_tm_magic_gust_cooldown=60..}] ls_tm_magic_gust_cooldown 0