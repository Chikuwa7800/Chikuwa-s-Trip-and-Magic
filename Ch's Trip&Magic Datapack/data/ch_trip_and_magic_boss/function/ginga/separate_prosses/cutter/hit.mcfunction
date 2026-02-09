playsound trip_magic:entity.ginunga.swing.hit hostile @a ~ ~ ~ 1 1
particle dust{color:[0.08,0.03,0.30],scale:2} ~ ~ ~ 0.5 0.5 0.5 0 7
particle dust{color:[0.18,0.13,0.40],scale:2} ~ ~ ~ 0.5 0.5 0.5 0 7
particle dust{color:[0.28,0.23,0.50],scale:2} ~ ~ ~ 0.5 0.5 0.5 0 7
particle enchant ~ ~ ~ 0.45 0.45 0.45 0 10
particle crit ~ ~ ~ 0.25 0.25 0.25 0 10


execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_bosses_cutter,dx=0] at @s positioned ~0.5 ~0.5 ~0.5 run damage @s 7 ch_trip_and_magic:entity/ginunga/cut_attack_projectile by @n[tag=ch_tm_bosses_cutter] from @n[tag=ch_trip_and_magic_bosses_intaract_ginga]

kill @s