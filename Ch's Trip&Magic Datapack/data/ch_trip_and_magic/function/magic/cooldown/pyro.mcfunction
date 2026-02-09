scoreboard players add @s ch_tm_magic_pyro_cooldown 1
execute as @s[scores={ch_tm_magic_pyro_cooldown=200..}] at @s run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.fire.lv2"}
tag @s[scores={ch_tm_magic_pyro_cooldown=200..}] remove ch_tm_magic_pyro_cooldown
scoreboard players set @s[scores={ch_tm_magic_pyro_cooldown=200..}] ch_tm_magic_pyro_cooldown 0