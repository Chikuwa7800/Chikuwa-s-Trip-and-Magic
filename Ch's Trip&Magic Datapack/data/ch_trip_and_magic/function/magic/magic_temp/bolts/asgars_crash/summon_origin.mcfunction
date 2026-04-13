summon marker ~ ~ ~ {Tags:["ch_tm.magic_entity","ch_tm_asgars_core"]}
scoreboard players operation @n[tag=ch_tm_asgars_core] ch_tm_entity_id = @s ch_tm_entity_id
function ch_effect_temp:vfx/bolt_lightning/play
tag @s remove ch_tm_asgars_crush
