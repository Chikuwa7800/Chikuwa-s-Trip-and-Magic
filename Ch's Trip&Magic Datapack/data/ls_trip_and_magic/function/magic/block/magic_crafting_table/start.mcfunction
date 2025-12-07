execute rotated 90.0 0.0 positioned ~ ~-0.03 ~ run function animated_java:magic_crafting_table/summon {args: {animation: 'animation.model.stay', start_animation: true}}
summon interaction ~ ~-0.03 ~ {width:1f,height:0.5f,Tags:["ch_tm_magic_crafting_table","ch_tm_magic_crafting_table_core","ch_tm_has_collision"],response:1b}
summon interaction ~ ~0.47 ~ {width:0.25f,height:0.25f,Tags:["ch_tm_magic_crafting_table","ch_tm_magic_crafting_table_select","ch_tm_has_collision"],response:1b}
playsound block.stone.place block @a ~ ~ ~ 1 1
kill @s
