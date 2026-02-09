advancement revoke @s[type=player] only ch_trip_and_magic:trip/weapons/attack/bash_shield
execute if entity @s[tag=ch_tm_cooldown_bash_shield,type=player] run return fail
tag @s[type=player] add ch_tm_cooldown_bash_shield
tag @s add ch_tm_use_bash_shield
execute positioned ^ ^ ^1.5 as @e[type=!#ch_trip_and_magic:cannot_hurt_entities,distance=..2,tag=!ch_tm_use_bash_shield] positioned ^ ^ ^-1 at @s run damage @s 6 player_attack by @n[tag=ch_tm_use_bash_shield]
playsound item.shield.block player @a ~ ~ ~ 1 1
playsound block.anvil.land player @a ~ ~ ~ 1 1
playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 1 1
execute positioned ^ ^ ^0.5 anchored feet positioned ^ ^1 ^ run particle explosion ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute positioned ^ ^ ^1 anchored feet positioned ^ ^1 ^ run function ch_effect_temp:vfx/bash_in/play
execute positioned ^ ^ ^2 anchored feet positioned ^ ^1 ^ run function ch_effect_temp:vfx/bash_out/play
execute if entity @s[type=player] run summon armor_stand ^ ^ ^1 {Tags:["ch_tm_bash_shield_breaker"],NoGravity:1b,Invisible:1b,ShowArms:1b,equipment:{mainhand:{id:"minecraft:command_block","components":{"minecraft:item_model":"minecraft:air","minecraft:weapon":{disable_blocking_for_seconds:6}}}}}
execute if entity @s[type=player] positioned ^ ^ ^1 run damage @s 0.001 player_attack by @n[type=armor_stand,tag=ch_tm_bash_shield_breaker]
execute if entity @s[type=player] positioned ^ ^ ^1 run kill @n[type=armor_stand,tag=ch_tm_bash_shield_breaker]
tag @s remove ch_tm_use_bash_shield
