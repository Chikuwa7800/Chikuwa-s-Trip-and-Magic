execute rotated as @n[tag=ch_vel_tulnna_effect_owner] run rotate @s ~ ~
data merge entity @s {item:{id:"barrier",components:{item_model:"trip_magic:magic/vel_tulnna"}},Tags:["ch.effect","ch.effect.vel_tulnna"],brightness:{block:15,sky:15},teleport_duration:1,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
