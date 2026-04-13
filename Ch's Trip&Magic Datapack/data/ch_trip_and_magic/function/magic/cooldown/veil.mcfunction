scoreboard players add @s ch_tm_magic_veil_cooldown 1
execute as @s[scores={ch_tm_magic_veil_cooldown=350..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.water.lv3"}
tag @s[scores={ch_tm_magic_veil_cooldown=350..}] remove ch_tm_magic_veil_cooldown
scoreboard players set @s[scores={ch_tm_magic_veil_cooldown=350..}] ch_tm_magic_veil_cooldown 0