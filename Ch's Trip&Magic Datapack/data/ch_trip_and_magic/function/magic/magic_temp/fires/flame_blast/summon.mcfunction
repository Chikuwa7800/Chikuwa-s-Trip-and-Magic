tag @s add ch_tm_blast_pl
execute summon block_display run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/init

playsound entity.zombie.infect player @a ~ ~ ~ 1 0.25
playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.5
playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 1 1
particle lava ~ ~ ~ 0 0 0 0.5 5 force
tag @s remove ch_tm_blast_pl