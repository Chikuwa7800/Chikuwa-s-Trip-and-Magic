execute positioned ^ ^ ^0.467 rotated 90.0 0.0 positioned ~ ~-0.5 ~ run function animated_java:magic_crafting_table/summon {args: {animation: 'animation.model.stay', start_animation: true}}
execute positioned ^ ^ ^0.467 run summon interaction ~ ~-0.5 ~ {width:1f,height:0.5f,Tags:["ch_tm_magic_crafting_table_core"],response:1b}
execute positioned ^ ^ ^0.467 run summon interaction ~ ~ ~ {width:0.25f,height:0.25f,Tags:["ch_tm_magic_crafting_table_select"],response:1b}
playsound block.basalt.place block @a ~ ~ ~ 2 1
kill @s
