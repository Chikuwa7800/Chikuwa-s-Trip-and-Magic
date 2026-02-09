playsound entity.vindicator.celebrate hostile @a ~ ~ ~ 1 1
playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1
playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 1
particle wax_off ~ ~1 ~ 0.5 1 0.5 0.1 20 force

execute on target if entity @s[distance=..6] run return run function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill/vs_mellee/forward_step/_decide
function ch_trip_and_magic:trip/mobs/firld_boss/main/illager/craiver/skill/vs_mellee/backward_step/_decide