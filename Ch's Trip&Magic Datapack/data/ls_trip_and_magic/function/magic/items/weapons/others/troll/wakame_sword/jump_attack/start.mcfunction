effect give @s levitation 1 1 true

#schedule function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/jump_attack/clear_effect 1t

#effect clear @a[tag=ls_trip_and_magic_wakame_sword_jump_attack_] levitation

#summon area_effect_cloud ~ ~0.5 ~ {Radius:0.0f,Duration:6,DurationOnUse:0,Age:4,Effects:[{Id:25,Amplifier:90b,Duration:3}]}

tp @s ~ ~5 ~

playsound entity.wither.shoot player @a ~ ~ ~ 3 1
playsound entity.firework_rocket.shoot player @a ~ ~ ~ 3 1

particle poof ~ ~ ~ 0 0 0 0.3 100 force

tag @s remove ls_trip_and_magic_wakame_sword_jump_attack_

scoreboard players set @s ls_tm_shift 0

tag @s add ls_trip_and_magic_wakame_sword_jump_attack_2