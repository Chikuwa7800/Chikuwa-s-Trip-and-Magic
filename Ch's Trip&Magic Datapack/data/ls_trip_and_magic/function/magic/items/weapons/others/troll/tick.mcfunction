scoreboard players add @a[tag=ls_trip_and_magic_wakame_sword_dive_cooldown] ls_tm_magic_dive_cooldown 1
execute as @a[tag=ls_trip_and_magic_wakame_sword_dive_cooldown,scores={ls_tm_magic_dive_cooldown=160..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.wakame.1"}
tag @a[tag=ls_trip_and_magic_wakame_sword_dive_cooldown,scores={ls_tm_magic_dive_cooldown=160..}] remove ls_trip_and_magic_wakame_sword_dive_cooldown
scoreboard players set @a[scores={ls_tm_magic_dive_cooldown=160..}] ls_tm_magic_dive_cooldown 0

scoreboard players add @a[tag=ls_trip_and_magic_wakame_sword_boom_cooldown] ls_tm_magic_boom_cooldown 1
execute as @a[tag=ls_trip_and_magic_wakame_sword_boom_cooldown,scores={ls_tm_magic_boom_cooldown=60..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.wakame.2"}
tag @a[tag=ls_trip_and_magic_wakame_sword_boom_cooldown,scores={ls_tm_magic_boom_cooldown=60..}] remove ls_trip_and_magic_wakame_sword_boom_cooldown
scoreboard players set @a[scores={ls_tm_magic_boom_cooldown=60..}] ls_tm_magic_boom_cooldown 0

scoreboard players add @a[tag=ls_trip_and_magic_wakame_sword_jump_attack_cooldown] ls_tm_magic_jump_attack_cooldown 1
execute as @a[tag=ls_trip_and_magic_wakame_sword_jump_attack_cooldown,scores={ls_tm_magic_jump_attack_cooldown=200..}] at @s run function ls_trip_and_magic:magic/cooldown_end {"name":"item_skill.wakame.3"}
tag @a[tag=ls_trip_and_magic_wakame_sword_jump_attack_cooldown,scores={ls_tm_magic_jump_attack_cooldown=200..}] remove ls_trip_and_magic_wakame_sword_jump_attack_cooldown
scoreboard players set @a[scores={ls_tm_magic_jump_attack_cooldown=200..}] ls_tm_magic_jump_attack_cooldown 0
