effect give @s resistance 1 4 true
playsound entity.generic.explode player @s ~ ~ ~ 5 1

particle explosion_emitter ~ ~ ~ 0 0 0 0.1 1
execute as @e[distance=..6,tag=!ls_trip_and_magic_wakame_sword_jump_attack_2_main_end] at @s run damage @s 27 player_attack by @a[tag=ls_trip_and_magic_wakame_sword_jump_attack_2_main_end,limit=1,sort=nearest]

tag @s remove ls_trip_and_magic_wakame_sword_jump_attack_2_main_end
tag @s add ls_trip_and_magic_wakame_sword_jump_attack_cooldown

