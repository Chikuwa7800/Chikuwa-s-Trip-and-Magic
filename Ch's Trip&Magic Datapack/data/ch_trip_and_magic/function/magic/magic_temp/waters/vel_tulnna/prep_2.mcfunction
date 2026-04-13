particle dust{color:14614345,scale:0.5} ^ ^ ^ 0.0 0.0 0.0 0 1
particle dust{color:14614345,scale:0.5} ^ ^ ^0.25 0.0 0.0 0.0 0 1
particle dust{color:14614345,scale:0.5} ^ ^ ^0.5 0.0 0.0 0.0 0 1
particle dust{color:14614345,scale:0.5} ^ ^ ^0.75 0.0 0.0 0.0 0 1
playsound entity.guardian.attack player @a ^ ^ ^0.01 0.1 1.25
execute if block ~ ~ ~ #ch_trip_and_magic:no_collision if loaded ~ ~ ~ positioned ^ ^ ^1 run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/prep_2
