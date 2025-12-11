damage @n[type=!#ls_trip_and_magic:cannot_hurt_entities,dx=1,dy=1,dz=1] 15 ls_trip_and_magic:break_block at ^ ^ ^-1
execute positioned ^ ^ ^-0.5 run particle block{block_state:blackstone} ~0.5 ~0.5 ~0.5 0.25 0.25 0.25 0.5 5 force
execute positioned ^ ^ ^-0.5 run playsound block.tuff.break block @a ~ ~ ~ 1 1
execute positioned ^ ^ ^-0.5 run playsound block.tuff.break block @a ~ ~ ~ 1 0
kill @s
