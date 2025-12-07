execute if entity @a[distance=..20,gamemode=!spectator,gamemode=!creative] run scoreboard players add @s ls_trip_boss_tick 1
execute if entity @e[distance=..20,predicate=ls_trip_and_magic:trip/mobs/target] run scoreboard players add @s ls_trip_boss_tick 1

execute if entity @s[scores={ls_trip_boss_tick=80}] if entity @a[distance=..6] run tag @s add ls_tm_trip_firld_boss_husk_hammer_ex
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run effect give @s slowness 3 0 true
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run effect give @s weakness 3 4 true
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run playsound entity.player.attack.strong hostile @a ~ ~ ~ 1 0.5
execute if entity @s[scores={ls_trip_boss_tick=80},tag=ls_tm_trip_firld_boss_husk_hammer_ex] anchored feet run particle block{block_state:iron_block} ~ ~1.5 ~ 0.25 0.25 0.25 0.1 10 force

execute if entity @s[scores={ls_trip_boss_tick=90},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run playsound entity.husk.ambient hostile @a ~ ~ ~ 1 1.25
execute if entity @s[scores={ls_trip_boss_tick=90},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run playsound block.wooden_trapdoor.close hostile @a ~ ~ ~ 1 0.75
execute if entity @s[scores={ls_trip_boss_tick=90},tag=ls_tm_trip_firld_boss_husk_hammer_ex] anchored feet run particle block{block_state:sand} ~ ~1 ~ 0.5 1 0.5 0.1 20 force

execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run tag @s add ls_tm_trip_firld_boss_husk_hammer
execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_husk_hammer_ex] run scoreboard players set @s ls_trip_boss_tick_ex 0
execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_husk_hammer] run data merge entity @s {Motion:[0.0,0.45,0.0]}
execute if entity @s[scores={ls_trip_boss_tick=100},tag=ls_tm_trip_firld_boss_husk_hammer] run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer,tag=!ls_tm_trip_firld_boss_husk_hammer_success_line] unless block ~ ~-0.01 ~ #ls_trip_and_magic:no_collision run tag @s add ls_tm_trip_firld_boss_husk_hammer_success
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer] unless block ~ ~-0.01 ~ #ls_trip_and_magic:no_collision run tag @s add ls_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer_success] positioned ^ ^ ^1.5 as @e[tag=!ls_tm_trip_mobs_warrior_husk,type=!#ls_trip_and_magic:mobs,type=!#zombies,distance=..1.5] at @s run damage @s 5 mob_attack by @n[tag=ls_tm_trip_mobs_warrior_husk]
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer_success] rotated ~ 0 run particle explosion ^ ^ ^1 0 0 0 0 1 force
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer_success] run playsound entity.zombie.attack_iron_door hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer_success] run playsound entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 2 0.75
execute if entity @s[scores={ls_trip_boss_tick=102..130},tag=ls_tm_trip_firld_boss_husk_hammer_success] run tag @s remove ls_tm_trip_firld_boss_husk_hammer_success
execute if entity @s[scores={ls_trip_boss_tick_ex=..10},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run scoreboard players add @s ls_trip_boss_tick_ex 1
execute if entity @s[scores={ls_trip_boss_tick_ex=5},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] positioned ^ ^ ^2.5 as @e[tag=!ls_tm_trip_mobs_warrior_husk,type=!#ls_trip_and_magic:mobs,type=!#zombies,distance=..1] at @s run damage @s 5 mob_attack by @n[tag=ls_tm_trip_mobs_warrior_husk]
execute if entity @s[scores={ls_trip_boss_tick_ex=5},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] rotated ~ 0 run particle explosion ^ ^ ^2 0 0 0 0 1 force
execute if entity @s[scores={ls_trip_boss_tick_ex=5},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 0.75
execute if entity @s[scores={ls_trip_boss_tick_ex=10},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] positioned ^ ^ ^3.5 as @e[tag=!ls_tm_trip_mobs_warrior_husk,type=!#ls_trip_and_magic:mobs,type=!#zombies,distance=..1] at @s run damage @s 5 mob_attack by @n[tag=ls_tm_trip_mobs_warrior_husk]
execute if entity @s[scores={ls_trip_boss_tick_ex=10},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] rotated ~ 0 run particle explosion ^ ^ ^3 0 0 0 0 1 force
execute if entity @s[scores={ls_trip_boss_tick_ex=10},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 0.75
execute if entity @s[scores={ls_trip_boss_tick_ex=11..},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run tag @s remove ls_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick=300..},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run tag @s remove ls_tm_trip_firld_boss_husk_hammer_success_line
execute if entity @s[scores={ls_trip_boss_tick_ex=11..},tag=ls_tm_trip_firld_boss_husk_hammer_success_line] run scoreboard players set @s ls_trip_boss_tick_ex 0

execute if entity @s[scores={ls_trip_boss_tick=130},tag=ls_tm_trip_firld_boss_husk_hammer] run tag @s remove ls_tm_trip_firld_boss_husk_hammer

execute if entity @s[scores={ls_trip_boss_tick=190}] if entity @a[distance=..6] run tag @s add ls_tm_trip_firld_boss_husk_bash_ex
execute if entity @s[scores={ls_trip_boss_tick=190},tag=ls_tm_trip_firld_boss_husk_bash_ex] run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=190},tag=ls_tm_trip_firld_boss_husk_bash_ex] run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=190},tag=ls_tm_trip_firld_boss_husk_bash_ex] run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={ls_trip_boss_tick=190},tag=ls_tm_trip_firld_boss_husk_bash_ex] run particle wax_off ~ ~1 ~ 0.5 1 0.5 0.1 20 force
execute if entity @s[scores={ls_trip_boss_tick=190},tag=ls_tm_trip_firld_boss_husk_bash_ex] run effect give @s slowness 1 3 true

execute if entity @s[scores={ls_trip_boss_tick=230},tag=ls_tm_trip_firld_boss_husk_bash_ex] run function ls_trip_and_magic:trip/weapons/bash_shield
execute if entity @s[scores={ls_trip_boss_tick=230},tag=ls_tm_trip_firld_boss_husk_bash_ex] run tag @s remove ls_tm_trip_firld_boss_husk_bash_ex

scoreboard players set @s[scores={ls_trip_boss_tick=300..}] ls_trip_boss_tick 0
 