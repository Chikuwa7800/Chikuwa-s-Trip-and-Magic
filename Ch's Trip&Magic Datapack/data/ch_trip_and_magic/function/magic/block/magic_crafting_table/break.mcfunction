execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run playsound block.basalt.break block @a ~ ~0.25 ~ 1 1
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run particle block{block_state:white_concrete} ~ ~0.5 ~ 0.125 0.125 0.125 0.5 5 force
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run particle block{block_state:lapis_block} ~ ~0.5 ~ 0.125 0.125 0.125 0.5 5 force
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run particle block{block_state:black_concrete} ~ ~0.5 ~ 0.125 0.125 0.125 0.5 10 force
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run particle block{block_state:obsidian} ~ ~0.5 ~ 0.125 0.125 0.125 0.5 5 force
execute if entity @p[gamemode=!creative,gamemode=!spectator] as @n[tag=ch_tm_magic_crafting_table_core] at @s run loot spawn ~ ~0.25 ~ loot ch_trip_and_magic:item/magic/magic_crafting_table
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run execute as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/remove/this
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run execute as @e[tag=aj.magic_crafting_table.locator,limit=10,sort=nearest] at @s run kill @s
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run kill @n[tag=ch_tm_magic_crafting_table_select]
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s as @e[tag=ch_tm_magic_crafting_table_item_display,distance=..1.25] at @s unless entity @e[tag=ch_tm_magic_crafting_table_select,distance=..0.75] run function ch_trip_and_magic:magic/block/magic_crafting_table/display_break
execute as @n[tag=ch_tm_magic_crafting_table_core] at @s run kill @s
advancement revoke @s only ch_trip_and_magic:magic/magic_table_break
