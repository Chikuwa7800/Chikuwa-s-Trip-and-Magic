tag @s add ch_tm_vel_tulnna_shot

function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/prep_3

# エフェクト
 title @s times 0t 1t 3t
 title @s title {"font":"trip_magic:vfx/others","text":"\uE000",color:"white"}
 execute anchored eyes run particle flash{color:-13663489} ^ ^ ^0.1
 function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/effect

execute as @e[tag=ch_tm_tulnna_hit,type=player] if score @s ch_tm_sec_entity_id = @n[tag=ch_tm_vel_tulnna] ch_tm_entity_id at @s run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/screen
execute as @e[tag=ch_tm_tulnna_hit] if score @s ch_tm_sec_entity_id = @n[tag=ch_tm_vel_tulnna] ch_tm_entity_id run function ch_trip_and_magic:magic/magic_temp/waters/vel_tulnna/damage

scoreboard players reset @s ch_tm_magic_tulnna_tick
tag @s remove ch_tm_vel_tulnna
tag @s remove ch_tm_vel_tulnna_shot
scoreboard players remove @s ch_tm_magic_casting 1