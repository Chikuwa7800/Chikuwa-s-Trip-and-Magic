scoreboard players add @s ch_tm_magic_bolea_cooldown 1
execute as @s[scores={ch_tm_magic_bolea_cooldown=300..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.ice.lv3"}
tag @s[scores={ch_tm_magic_bolea_cooldown=300..}] remove ch_tm_magic_bolea_cooldown
scoreboard players set @s[scores={ch_tm_magic_bolea_cooldown=300..}] ch_tm_magic_bolea_cooldown 0