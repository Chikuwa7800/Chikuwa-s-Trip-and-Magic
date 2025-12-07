execute if entity @s[scores={ls_tm_wakame_jump=15}] run playsound entity.elder_guardian.curse player @a ~ ~1.5 ~ 5 2

execute if entity @s[scores={ls_tm_wakame_jump=15}] run particle witch ~ ~1 ~ 0.25 1.5 0.25 0.1 20

execute if entity @s[scores={ls_tm_wakame_jump=26}] positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute if entity @s[scores={ls_tm_wakame_jump=28}] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/end
tag @s[scores={ls_tm_wakame_jump=28..}] remove ls_trip_and_magic_wakame_sword_jump_attack_2_main
tag @s[scores={ls_tm_wakame_jump=28..}] add ls_trip_and_magic_wakame_sword_jump_attack_2_main_end
scoreboard players set @s[scores={ls_tm_wakame_jump=28..}] ls_tm_wakame_jump 0
