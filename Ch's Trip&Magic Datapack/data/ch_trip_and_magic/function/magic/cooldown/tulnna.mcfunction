scoreboard players add @s ch_tm_magic_tulnna_cooldown 1
scoreboard players operation @s ch_tm_magic_tulnna_cooldown += @s ch_tm_magic_cooldown_speed_up
execute as @s[scores={ch_tm_magic_tulnna_cooldown=1000..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.water.lv5"}
tag @s[scores={ch_tm_magic_tulnna_cooldown=1000..}] remove ch_tm_magic_tulnna_cooldown
scoreboard players set @s[scores={ch_tm_magic_tulnna_cooldown=1000..}] ch_tm_magic_tulnna_cooldown 0