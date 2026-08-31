$execute as @e[type=item_display,tag=h_tm_llyr] if score @s ch_tm_entity_id matches $(owner) run kill @s
function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/end