scoreboard players add @s ch_tm_magic_atte_cooldown 1
execute as @s[scores={ch_tm_magic_atte_cooldown=150..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.nature.lv2"}
tag @s[scores={ch_tm_magic_atte_cooldown=150..}] remove ch_tm_magic_atte_cooldown
scoreboard players set @s[scores={ch_tm_magic_atte_cooldown=150..}] ch_tm_magic_atte_cooldown 0