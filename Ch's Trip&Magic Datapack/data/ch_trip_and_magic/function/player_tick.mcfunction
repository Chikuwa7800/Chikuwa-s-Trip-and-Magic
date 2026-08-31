execute if entity @s[scores={ch_trip_magic_install=1..}] run function ch_trip_and_magic:join_the_world/check
execute if entity @s[tag=ch_cutting_board] run function ch_trip_and_magic:trip/cook/cutting_board/set
execute if entity @s[tag=ch_tm_spawned,tag=!ch_tm_spawneed_initted] run function ch_trip_and_magic:debug/z_egg_def
tag @s[tag=!ch_tm_was_on_ground,predicate=ch_trip_and_magic:acshident/location_check/on_ground] add ch_tm_was_on_ground
tag @s[predicate=ch_trip_and_magic:acshident/jump] add ch_tm_is_jumping
tag @s[tag=ch_tm_is_jumping,tag=!ch_tm_did_skywalk,predicate=!ch_trip_and_magic:acshident/jump,tag=!ch_tm_hunger] add ch_tm_can_skywalk
tag @s[tag=ch_tm_is_jumping,predicate=ch_trip_and_magic:acshident/location_check/on_ground] remove ch_tm_is_jumping
tag @s[tag=!ch_tm_is_jumping,tag=ch_tm_can_skywalk] remove ch_tm_can_skywalk
tag @s[tag=ch_tm_hunger,tag=ch_tm_can_skywalk] remove ch_tm_can_skywalk
tag @s[tag=!ch_tm_is_jumping,tag=ch_tm_did_skywalk] remove ch_tm_did_skywalk
tag @s[scores={ch_tm_foodlevel=..6}] add ch_tm_hunger
tag @s[scores={ch_tm_foodlevel=7..}] remove ch_tm_hunger
execute if entity @s[scores={ch_trip_magic_death=1..}] run function ch_trip_and_magic:death_reset
scoreboard players add @s[tag=ch_tm_cooldown_bash_shield] ch_tm_bash_shield_cooldown 1
execute if entity @s[tag=ch_tm_cooldown_bash_shield,scores={ch_tm_bash_shield_cooldown=60..}] run function ch_trip_and_magic:trip/weapons/reuse_bash_shield

execute if entity @s[predicate=ch_trip_and_magic:trip/hands_knife,tag=!ch_trip_and_magic_knife_hands] run function ch_trip_and_magic:trip/weapons/knife_hands_start
execute if entity @s[predicate=!ch_trip_and_magic:trip/hands_knife,tag=ch_trip_and_magic_knife_hands] run function ch_trip_and_magic:trip/weapons/knife_hands_end

execute if entity @s[predicate=ch_trip_and_magic:magic/lightning_rapier_any] run function ch_trip_and_magic:magic/items/weapons/lightning_rapier/main

execute if entity @s[predicate=ch_trip_and_magic:magic/magic_item] run function ch_trip_and_magic:magic/items/has_magic_item
execute if entity @s[predicate=ch_trip_and_magic:magic/magic_wand,tag=!ch_tm_having_magic_staff] run function ch_trip_and_magic:magic/items/weapons/magic_staff/start
execute if entity @s[predicate=!ch_trip_and_magic:magic/magic_wand,tag=ch_tm_having_magic_staff] run function ch_trip_and_magic:magic/items/weapons/magic_staff/end
execute if entity @s[predicate=ch_trip_and_magic:magic/elder_wand,tag=!ch_tm_having_elder_wand] run function ch_trip_and_magic:magic/items/weapons/elder_wand/start
execute if entity @s[predicate=!ch_trip_and_magic:magic/elder_wand,tag=ch_tm_having_elder_wand] run function ch_trip_and_magic:magic/items/weapons/elder_wand/end
function ch_trip_and_magic:magic/mana
function ch_trip_and_magic:magic/cooldown_tick
execute if score @s ch_tm_magic_xp_level > @s ch_tm_magic_xp_level_dummy run function ch_trip_and_magic:magic/magic_strength
execute if score @s ch_tm_death_count matches 1.. run function ch_trip_and_magic:magic/reset_mana
execute if entity @s[tag=ch_tm_teleportation_scroll_tick] run function ch_trip_and_magic:magic/items/artifacts/scroll/teleportation_scroll/has_location/tick
execute if entity @s[tag=ch_tm_re_teleportation_scroll_tick] run function ch_trip_and_magic:magic/items/artifacts/scroll/rewrited_teleportation_scroll/has_location/tick


scoreboard players add @s[tag=ch_trip_and_magic_wakame_sword_dive_cooldown] ch_tm_magic_dive_cooldown 1
execute if entity @s[tag=ch_trip_and_magic_wakame_sword_dive_cooldown,scores={ch_tm_magic_dive_cooldown=160..}] run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.wakame.1"}
tag @s[tag=ch_trip_and_magic_wakame_sword_dive_cooldown,scores={ch_tm_magic_dive_cooldown=160..}] remove ch_trip_and_magic_wakame_sword_dive_cooldown
scoreboard players set @s[scores={ch_tm_magic_dive_cooldown=160..}] ch_tm_magic_dive_cooldown 0

scoreboard players add @s[tag=ch_trip_and_magic_wakame_sword_boom_cooldown] ch_tm_magic_boom_cooldown 1
execute if entity @s[tag=ch_trip_and_magic_wakame_sword_boom_cooldown,scores={ch_tm_magic_boom_cooldown=60..}] run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.wakame.2"}
tag @s[tag=ch_trip_and_magic_wakame_sword_boom_cooldown,scores={ch_tm_magic_boom_cooldown=60..}] remove ch_trip_and_magic_wakame_sword_boom_cooldown
scoreboard players set @s[scores={ch_tm_magic_boom_cooldown=60..}] ch_tm_magic_boom_cooldown 0

scoreboard players add @s[tag=ch_trip_and_magic_wakame_sword_jump_attack_cooldown] ch_tm_magic_jump_attack_cooldown 1
execute if entity @s[tag=ch_trip_and_magic_wakame_sword_jump_attack_cooldown,scores={ch_tm_magic_jump_attack_cooldown=200..}] run function ch_trip_and_magic:magic/cooldown_end {"name":"item_skill.wakame.3"}
tag @s[tag=ch_trip_and_magic_wakame_sword_jump_attack_cooldown,scores={ch_tm_magic_jump_attack_cooldown=200..}] remove ch_trip_and_magic_wakame_sword_jump_attack_cooldown
scoreboard players set @s[scores={ch_tm_magic_jump_attack_cooldown=200..}] ch_tm_magic_jump_attack_cooldown 0

execute if entity @s[predicate=ch_trip_and_magic:magic/magic_core/max_up,predicate=ch_trip_and_magic:score/used_stick] run function ch_trip_and_magic:magic/items/artifacts/magic_core/mana_up

execute if entity @s[predicate=ch_trip_and_magic:magic/magic_core/regene_up,predicate=ch_trip_and_magic:score/used_stick] run function ch_trip_and_magic:magic/items/artifacts/magic_core/mana_health_up

execute if entity @s[predicate=ch_trip_and_magic:magic/scroll/_has,predicate=ch_trip_and_magic:score/used_stick] run function ch_trip_and_magic:magic/items/artifacts/scroll/def

execute if predicate ch_trip_and_magic:score/used_stick run function ch_trip_and_magic:reset_usestick