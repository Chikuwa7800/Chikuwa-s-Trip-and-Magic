scoreboard players add @s ch_tm_magic_adure_cooldown 1
scoreboard players operation @s ch_tm_magic_adure_cooldown += @s ch_tm_magic_cooldown_speed_up
execute as @s[scores={ch_tm_magic_adure_cooldown=800..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.fire.lv4"}
tag @s[scores={ch_tm_magic_adure_cooldown=800..}] remove ch_tm_magic_adure_cooldown
scoreboard players set @s[scores={ch_tm_magic_adure_cooldown=800..}] ch_tm_magic_adure_cooldown 0