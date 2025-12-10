execute anchored eyes run summon fireball ^ ^ ^0.5 {ExplosionPower:3,Tags:["ls_tm_fireball"]}

effect give @s resistance 1 4 true

gamerule mob_griefing false
tag @s add ls_tm_magic_blast_cooldown

damage @n[tag=ls_tm_fireball,sort=nearest,limit=1] 1 player_attack by @s

playsound entity.zombie.infect player @a ~ ~ ~ 1 0.25
playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5
playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 1 1
particle lava ~ ~ ~ 0 0 0 0.5 5 force

