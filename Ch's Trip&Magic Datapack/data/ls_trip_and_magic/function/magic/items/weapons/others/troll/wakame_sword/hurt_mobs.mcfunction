#scoreboard players add @s ls_tm_wakame_player_hurt_mobs 1
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "weapon","weapon_type": "wakame_sword"}}}},nbt=!{SelectedItem:{components:{"minecraft:custom_data":{item_condition:"red"}}}}] run tag @s add ls_magic_wakame_hurt
execute as @s[tag=ls_magic_wakame_hurt] at @s run playsound entity.guardian.hurt player @s ~ ~1.5 ~ 5 0.5
execute as @s[tag=ls_magic_wakame_hurt] at @s anchored eyes run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 0.1 0.5 0.1 0.1 50 force @s
execute as @s[tag=ls_magic_wakame_hurt] at @s run playsound minecraft:ambient.underwater.exit player @a ~ ~ ~ 1 1
execute as @s[tag=ls_magic_wakame_hurt] at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 2
execute as @s[tag=ls_magic_wakame_hurt] at @s run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 1
execute as @s[tag=ls_magic_wakame_hurt] at @s anchored eyes run particle minecraft:bubble_pop ^ ^ ^2 0.5 0.5 0.5 0.1 100 force
execute as @s[tag=ls_magic_wakame_hurt] at @s run particle minecraft:sweep_attack ^ ^1.25 ^2 0.25 0.25 0.25 1 1 force
execute as @s[tag=ls_magic_wakame_hurt] at @s run effect give @s saturation 1 1 true
tag @s remove ls_magic_wakame_hurt
advancement revoke @s only ls_trip_and_magic:trip/weapons/attack/wakame_sword