# --- IGNORE ---
scoreboard players add @s ls_tm_magic_temp_cooldown 1
execute as @s[scores={ls_tm_magic_temp_cooldown=200..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.temp.lv"}
tag @s[scores={ls_tm_magic_temp_cooldown=200..}] remove ls_tm_magic_temp_cooldown
scoreboard players set @s[scores={ls_tm_magic_temp_cooldown=200..}] ls_tm_magic_temp_cooldown 0