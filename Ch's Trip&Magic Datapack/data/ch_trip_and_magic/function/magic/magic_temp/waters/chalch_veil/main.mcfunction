scoreboard players add @s ch_tm_tick 1
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_chalch_veil] ch_tm_entity_id at @s anchored eyes positioned ^ ^ ^-0.01 run tp @n[tag=ch_tm_chalch_veil] ~ ~-0.5 ~
particle dust{color:21956,scale:0.75} ~ ~ ~ 0.25 0.5 0.25 0.0125 10
particle trial_spawner_detection_ominous ~ ~-0.5 ~ 0.5 0.5 0.5 0 5
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_chalch_veil] ch_tm_entity_id run effect give @s resistance 1 1
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_chalch_veil] ch_tm_entity_id run effect give @s water_breathing 5 0
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_chalch_veil] ch_tm_entity_id run effect give @s dolphins_grace 5 0
execute as @e[tag=ch.has.entity_id] if score @s ch_tm_entity_id = @n[tag=ch_tm_chalch_veil] ch_tm_entity_id run effect give @s luck 1 1
execute if score @s ch_tm_tick matches 200 run playsound trip_magic:magic.water.chalch_veil.end player @a ~ ~ ~ 1
execute if score @s ch_tm_tick matches 200.. run kill @s