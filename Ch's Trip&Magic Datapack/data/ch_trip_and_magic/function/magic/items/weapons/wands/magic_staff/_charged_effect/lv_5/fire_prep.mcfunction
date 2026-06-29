particle dust{color:13062942,scale:0.1} ^ ^ ^ 0.0 0.0 0.0 0 1 normal @s
particle dust{color:13062942,scale:0.1} ^ ^ ^0.25 0.0 0.0 0.0 0 1 normal @s
particle dust{color:13062942,scale:0.1} ^ ^ ^0.5 0.0 0.0 0.0 0 1 normal @s
particle dust{color:13062942,scale:0.1} ^ ^ ^0.75 0.0 0.0 0.0 0 1 normal @s
execute if entity @s[distance=..22.5] if block ~ ~ ~ #ch_trip_and_magic:no_collision if loaded ~ ~ ~ positioned ^ ^ ^1 run return run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/_charged_effect/lv_5/fire_prep
particle flame ~ ~ ~ 0.5 0.125 0.5 0 10 force @s