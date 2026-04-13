playsound trip_magic:block.magic_crafting_table.craft block @a ~ ~ ~
playsound trip_magic:block.magic_crafting_table.water block @a ~ ~ ~
execute as @n[tag=aj.global.node.crafted] at @s run particle minecraft:rain ~ ~0.5 ~ 0.25 0.25 0.25 0. 25
execute as @n[tag=aj.global.node.crafted] at @s run particle minecraft:flash{color:-16514827}
execute as @n[tag=aj.magic_crafting_table.root] at @s run function animated_java:magic_crafting_table/animations/animation.model.stay/play