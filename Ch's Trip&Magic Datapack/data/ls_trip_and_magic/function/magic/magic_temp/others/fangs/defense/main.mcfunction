tag @s add ls_tm_fangs_staff_defense_pl
tag @s add ls_tm_fangs_attack_cooldown
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_1"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_2"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_3"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_4"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_5"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_1"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_2"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_3"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_4"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_5"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_6"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_7"]}
summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker","ls_tm_fangs_staff_defense_marker_out_8"]}
execute positioned over motion_blocking run summon marker ^ ^ ^ {Tags:["ls_tm_fangs_staff_defense_marker_eyeline"]}
tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] ~ ~ ~ ~ 0
execute as @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_1,sort=nearest,limit=1] ~ ~ ~ ~ 0
execute as @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_2,sort=nearest,limit=1] ~ ~ ~ ~72 0
execute as @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_3,sort=nearest,limit=1] ~ ~ ~ ~144 0
execute as @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_4,sort=nearest,limit=1] ~ ~ ~ ~216 0
execute as @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_5,sort=nearest,limit=1] ~ ~ ~ ~288 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_1,sort=nearest,limit=1] ~ ~ ~ ~ 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_2,sort=nearest,limit=1] ~ ~ ~ ~45 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_3,sort=nearest,limit=1] ~ ~ ~ ~90 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_4,sort=nearest,limit=1] ~ ~ ~ ~135 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_5,sort=nearest,limit=1] ~ ~ ~ ~180 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_6,sort=nearest,limit=1] ~ ~ ~ ~225 0
execute as @e[tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_7,sort=nearest,limit=1] ~ ~ ~ ~270 0
execute as @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_out_8,sort=nearest,limit=1] ~ ~ ~ ~315 0
playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 1
playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 1
execute positioned ~ ~0.75 ~ run particle effect ^0.25 ^ ^ 0.1 0.1 0.1 0. 10
execute positioned ~ ~0.75 ~ run particle effect ^-0.25 ^ ^ 0.1 0.1 0.1 0. 10
function ls_trip_and_magic:magic/magic_temp/others/fangs/defense/summon_fangs_inside
kill @e[type=marker,tag=ls_tm_fangs_staff_defense_marker_eyeline,sort=nearest,limit=1]