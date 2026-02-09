execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s unless block ~ ~ ~ #ch_trip_and_magic:no_collision run tp @s ~ ~1 ~
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s if block ~ ~-1 ~ #ch_trip_and_magic:no_collision run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s run tp @s ^ ^ ^1
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s rotated ~ ~ positioned ~ ~-1 ~ run summon evoker_fangs ^ ^ ^-1.5 {Tags:["ch_tm_fangs_staff_attack_fang"]}
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s run tp @e[type=evoker_fangs,tag=ch_tm_fangs_staff_attack_fang,tag=!ch_tm_fangs_staff_attack_aftertp] ^ ^ ^-1.5 ~90 ~
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s run tag @e[type=evoker_fangs,tag=ch_tm_fangs_staff_attack_fang] add ch_tm_fangs_staff_attack_aftertp
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s if entity @s[scores={ch_tm_fangs_staff_attack=0..}] run scoreboard players remove @s ch_tm_fangs_staff_attack 1
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s if entity @s[scores={ch_tm_fangs_staff_attack=0..}] run schedule function ch_trip_and_magic:magic/magic_temp/others/fangs/attack/summon_fangs 1t
execute if entity @e[type=marker,tag=ch_tm_fangs_staff_attack_marker,scores={ch_tm_fangs_staff_attack=..0}] run tag @a[tag=ch_tm_fangs_staff_attack_pl] remove ch_tm_fangs_staff_attack_pl
kill @e[type=marker,tag=ch_tm_fangs_staff_attack_marker,scores={ch_tm_fangs_staff_attack=..0},limit=1,sort=nearest]