execute positioned ~1 ~1 ~1 as @e[dx=2,type=#ls_trip_and_magic:mirror] positioned ~-1 ~-1 ~-1 run damage @s 5 ls_trip_and_magic:magic/nature_lv1 by @a[limit=1,sort=nearest]
execute positioned ~1 ~1 ~1 as @e[dx=2,type=#ls_trip_and_magic:kills] positioned ~-1 ~-1 ~-1 run kill @s
execute positioned ~1 ~1 ~1 as @e[dx=2,type=#ls_trip_and_magic:kills] positioned ~-1 ~-1 ~-1 run playsound entity.item.break block @a ~ ~ ~ 2 1

tag @e[dx=2,type=#ls_trip_and_magic:mirror] add ls_mirror_mosion

execute as @a[limit=1,sort=nearest] at @s anchored eyes run tp @e[tag=ls_mirror_mosion,limit=1,sort=nearest] ^-0.275 ^ ^ ~ ~

execute as @a[limit=1,sort=nearest] at @s run execute rotated as @a[limit=1,sort=nearest] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^2 {Tags:["mirror_setmotion"],NoGravity:1b}

execute as @e[tag=ls_mirror_mosion,sort=nearest,limit=1] at @s run data modify entity @s Motion set from entity @e[tag=mirror_setmotion,limit=1,sort=random] Pos

kill @e[tag=mirror_setmotion]

tag @e[tag=ls_mirror_mosion] remove ls_mirror_mosion