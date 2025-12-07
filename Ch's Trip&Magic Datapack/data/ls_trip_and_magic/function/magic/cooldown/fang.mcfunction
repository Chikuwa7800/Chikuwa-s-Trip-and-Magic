scoreboard players add @s ls_tm_fangs_attack_cooldown 1
execute as @s[scores={ls_tm_fangs_attack_cooldown=50..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.fangs"}
tag @s[scores={ls_tm_fangs_attack_cooldown=50..}] remove ls_tm_fangs_attack_cooldown
scoreboard players set @s[scores={ls_tm_fangs_attack_cooldown=50..}] ls_tm_fangs_attack_cooldown 0