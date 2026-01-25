scoreboard players add @s ls_tm_magic_blast_cooldown 1
execute as @s[scores={ls_tm_magic_blast_cooldown=150..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.fire.lv2"}
tag @s[scores={ls_tm_magic_blast_cooldown=150..}] remove ls_tm_magic_blast_cooldown
scoreboard players set @s[scores={ls_tm_magic_blast_cooldown=150..}] ls_tm_magic_blast_cooldown 0