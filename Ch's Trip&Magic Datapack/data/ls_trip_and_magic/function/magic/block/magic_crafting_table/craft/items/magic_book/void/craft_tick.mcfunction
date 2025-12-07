scoreboard players add @s ls_tm_magic_crafting_table_craft_tick 1
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=1}] as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.prep_start/play
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=1}] run playsound trip_magic:block.magic_crafting_table.craft_prep block @a ~ ~ ~
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=11}] as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.prep/play
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=1..25}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:portal ~ ~ ~ 0.0 0.0 0.0 0.5 10
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] run playsound trip_magic:block.magic_crafting_table.void block @a ~ ~ ~
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:sonic_boom ~ ~0.25 ~ 0.0 0.0 0.0 0. 1
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:flash{color:-12255123}
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.stay/play
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..100}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..100}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:sculk_soul ~ ~0.25 ~ 0.25 0.25 0.25 0. 5
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..100}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:soul ~ ~0.25 ~ 0.25 0.25 0.25 0. 5
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..85}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:dust{color:[0.161,0.055,0.188],scale:1} ~ ~0.25 ~ 0.25 0.25 0.25 0 5
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..85}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:dust{color:[0.322,0.11,0.373],scale:2} ~ ~0.25 ~ 0.25 0.25 0.25 0 5
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] at @n[tag=aj.global.node.crafted] run loot spawn ~ ~ ~ loot ls_trip_and_magic:item/weapons/magic/book/void
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] run kill @n[tag=ch_tm_magic_crafting_table_core_item_display_magic_book]
tag @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] remove ch_tm_magic_crafting_table_prep
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] run tag @n[tag=ch_tm_magic_crafting_table_select] remove ch_tm_magic_crafting_table_prep
tag @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] remove ls_tm_magic_crafting_table_cannot_contact
tag @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] remove ls_tm_magic_crafting_table_crafting_magic_book_void
scoreboard players reset @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] ls_tm_magic_crafting_table_craft_tick