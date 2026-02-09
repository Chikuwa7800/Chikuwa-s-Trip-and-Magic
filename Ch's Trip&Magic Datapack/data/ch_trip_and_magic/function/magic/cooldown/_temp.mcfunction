# --- IGNORE ---
scoreboard players add @s ch_tm_magic_temp_cooldown 1
execute as @s[scores={ch_tm_magic_temp_cooldown=200..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.temp.lv"}
tag @s[scores={ch_tm_magic_temp_cooldown=200..}] remove ch_tm_magic_temp_cooldown
scoreboard players set @s[scores={ch_tm_magic_temp_cooldown=200..}] ch_tm_magic_temp_cooldown 0