scoreboard players add @s ch_tm_fangs_attack_cooldown 1
scoreboard players operation @s ch_tm_fangs_attack_cooldown += @s ch_tm_magic_cooldown_speed_up
execute as @s[scores={ch_tm_fangs_attack_cooldown=50..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.fangs"}
tag @s[scores={ch_tm_fangs_attack_cooldown=50..}] remove ch_tm_fangs_attack_cooldown
scoreboard players set @s[scores={ch_tm_fangs_attack_cooldown=50..}] ch_tm_fangs_attack_cooldown 0