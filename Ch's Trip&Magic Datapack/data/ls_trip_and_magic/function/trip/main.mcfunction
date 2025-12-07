function ls_trip_and_magic:trip/appdata/main

function ls_trip_and_magic:trip/mobs/main

#function ls_trip_and_magic:trip/items/bule_bull/tick

#execute as @a[tag=ls_tm_look_pl] at @s if entity @e[distance=..8] run function ls_trip_and_magic:trip/weapons/spear/main

#execute as @a at @s anchored eyes run function ls_trip_and_magic:trip/weapons/look

#execute if entity @e[tag=ls_tm_look_pl] run playsound ui.button.click player @a ~ ~ ~ 1 1 1
#execute as @e[tag=ls_tm_look_pl] at @s run particle crit ~ ~ ~ 0 0 0 0.2 20

#team add no_collosion

#team join no_collosion @a

#team modify no_collosion collisionRule pushOwnTeam

#effect give @e[tag=ls_attack_target_] invisibility infinite 1 true
#execute as @a[tag=ls_tm_look_pl] at @s anchored eyes run tp @e[tag=ls_attack_target_,nbt={PortalCooldown:1}] ~ ~ ~

#tp @e[tag=ls_attack_target_,nbt={PortalCooldown:0}] ~ ~-1000 ~
#kill @e[tag=ls_attack_target_,nbt={PortalCooldown:0}]

scoreboard players add @a[tag=ls_tm_cooldown_bash_shield] ls_tm_bash_shield_cooldown 1
execute as @a[tag=ls_tm_cooldown_bash_shield,scores={ls_tm_bash_shield_cooldown=60..}] at @s run function ls_trip_and_magic:trip/weapons/reuse_bash_shield