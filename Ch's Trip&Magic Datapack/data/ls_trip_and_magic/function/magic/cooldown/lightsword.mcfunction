#scoreboard players add @s ls_tm_magic_lightsword_cooldown 1
#execute as @s[scores={ls_tm_magic_lightsword_cooldown=200..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.magic.bolt.lv3"}
#tag @s[scores={ls_tm_magic_lightsword_cooldown=200..}] remove ls_tm_magic_lightsword_cooldown
#scoreboard players set @s[scores={ls_tm_magic_lightsword_cooldown=200..}] ls_tm_magic_lightsword_cooldown 0