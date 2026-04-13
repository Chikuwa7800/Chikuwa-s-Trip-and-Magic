tag @s add ch_tm_magic_pl


#ch_tm_fireball_display
execute anchored eyes run summon block_display ^ ^ ^0.5 {teleport_duration:3,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.2f,0.2f,0.2f]},Tags:["ch_tm_fireball_display","ch_tm_magic_ball"]}
execute store result score @n[type=block_display,tag=ch_tm_magic_ball] ch_tm_entity_id run scoreboard players get @s ch_tm_entity_id
execute anchored eyes run rotate @e[tag=ch_tm_fireball_display,sort=nearest,limit=1] facing ^ ^ ^1000

playsound entity.zombie.infect player @a ~ ~ ~ 1 0.25
particle lava ~ ~ ~ 0 0 0 0.5 5 force

