scoreboard players set @s ls_tm_bash_shield_cooldown 0
scoreboard players set @s ls_tm_bash_shield_return 0
function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.shield_bash"}
tag @s remove ls_tm_cooldown_bash_shield