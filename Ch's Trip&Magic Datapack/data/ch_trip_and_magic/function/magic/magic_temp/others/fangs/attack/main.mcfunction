tag @s add ch_tm_fangs_staff_attack_pl
tag @s add ch_tm_fangs_attack_cooldown
summon marker ^ ^ ^1 {Tags:["ch_tm_fangs_staff_attack_marker"]}
summon marker ^ ^ ^1 {Tags:["ch_tm_fangs_staff_attack_marker_eyeline"]}
tp @e[type=marker,tag=ch_tm_fangs_staff_attack_marker_eyeline,sort=nearest,limit=1] ~ ~ ~ ~ 0
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker_eyeline,sort=nearest,limit=1] at @s run tp @e[type=marker,tag=ch_tm_fangs_staff_attack_marker,tag=!ch_tm_fangs_staff_attack_aftertp,sort=nearest,limit=1] ^ ^ ^2 ~ 0
playsound entity.evoker.prepare_attack player @a ~ ~ ~ 1 1
playsound entity.evoker.cast_spell player @a ~ ~ ~ 1 1
execute positioned ~ ~0.75 ~ run particle entity_effect{color:-11649210} ^0.25 ^ ^ 0.1 0.75 0.1 0. 10
execute positioned ~ ~0.75 ~ run particle entity_effect{color:-11649210} ^-0.25 ^ ^ 0.1 0.75 0.1 0. 10
execute positioned ~ ~0.75 ~ run particle entity_effect{color:-11649210} ^ ^ ^0.25 0.1 0.75 0.1 0. 10
execute positioned ~ ~0.75 ~ run particle entity_effect{color:-11649210} ^ ^ ^-0.25 0.1 0.75 0.1 0. 10
scoreboard players set @e[type=marker,tag=ch_tm_fangs_staff_attack_marker,limit=1,sort=nearest] ch_tm_fangs_staff_attack 16
execute as @e[type=marker,tag=ch_tm_fangs_staff_attack_marker] at @s run function ch_trip_and_magic:magic/magic_temp/others/fangs/attack/summon_fangs
kill @e[type=marker,tag=ch_tm_fangs_staff_attack_marker_eyeline,sort=nearest,limit=1]