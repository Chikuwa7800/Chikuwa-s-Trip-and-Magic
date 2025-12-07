scoreboard players add @s ls_tm_magic_crafting_table_craft_tick 1
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=1}] as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.prep_start/play
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=1}] run playsound trip_magic:block.magic_crafting_table.craft_prep block @a ~ ~ ~
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=11}] as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.prep/play
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=1..25}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:portal ~ ~ ~ 0.0 0.0 0.0 0.5 10
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] run playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] run playsound trip_magic:block.magic_crafting_table.wakame block @a ~ ~ ~
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:splash ~ ~0.25 ~ 0.25 0.25 0.25 0. 25
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:flash{color:-16514827}
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:flash{color:-16750570}
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.stay/play
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..100}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:reverse_portal ~ ~ ~ 0.0 0.0 0.0 1 10
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..100}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:underwater ~ ~0.25 ~ 0.25 0.25 0.25 0. 10
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80..100}] as @n[tag=aj.global.node.crafted] at @s run particle minecraft:spore_blossom_air ~ ~0.25 ~ 0.0 0.0 0.0 0 10
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] at @n[tag=aj.global.node.crafted] run loot spawn ~ ~ ~ loot ls_trip_and_magic:item/weapons/magic/wakame_sword
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=80}] run kill @e[tag=ch_tm_magic_crafting_table_core_item_display_wakame,limit=5,sort=nearest]
tag @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] remove ch_tm_magic_crafting_table_prep
execute if entity @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] run tag @n[tag=ch_tm_magic_crafting_table_select] remove ch_tm_magic_crafting_table_prep
tag @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] remove ls_tm_magic_crafting_table_cannot_contact
tag @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] remove ls_tm_magic_crafting_table_crafting_wakame_sword
scoreboard players reset @s[scores={ls_tm_magic_crafting_table_craft_tick=101}] ls_tm_magic_crafting_table_craft_tick