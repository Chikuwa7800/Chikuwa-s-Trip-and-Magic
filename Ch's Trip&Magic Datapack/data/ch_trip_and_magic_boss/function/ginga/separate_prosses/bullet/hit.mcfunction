playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 2
playsound trip_magic:entity.ginunga.shot.hit hostile @a ~ ~ ~ 1 1
particle dust{color:[0.380,0.471,0.502],scale:2} ~ ~ ~ 0.5 0.5 0.5 0 7
particle dust{color:[0.192,0.314,0.502],scale:2} ~ ~ ~ 0.5 0.5 0.5 0 7
particle dust{color:[0.525,0.761,0.722],scale:2} ~ ~ ~ 0.5 0.5 0.5 0 7
particle enchant ~ ~ ~ 0.45 0.45 0.45 0 10
particle crit ~ ~ ~ 0.25 0.25 0.25 0 10


execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[tag=!ch_trip_and_magic_bosses_intaract_ginga,type=!#ch_trip_and_magic:mobs,tag=!ch_tm_bosses_void_bullet,dx=0] at @s positioned ~0.5 ~0.5 ~0.5 run damage @s 7 ch_trip_and_magic:entity/ginunga/bullet by @n[tag=ch_tm_bosses_void_bullet] from @n[tag=ch_trip_and_magic_bosses_intaract_ginga]

kill @s
