## ch.has.entity_id
scoreboard players add $ch.tm.entity_id_counter ch_tm_sec_entity_id 1
scoreboard players operation @s ch_tm_sec_entity_id = $ch.tm.entity_id_counter ch_tm_sec_entity_id
tag @s add ch.has.sec.entity_id
execute if score $ch.tm.entity_id_counter ch_tm_sec_entity_id matches 99999 run scoreboard players set $ch.tm.entity_id_counter ch_tm_sec_entity_id 0
