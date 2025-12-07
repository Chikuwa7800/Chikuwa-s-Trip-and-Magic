tag @s add ls_tm_magic_pl
tag @s add ls_tm_magic_pl_freeze
tag @s add ls_tm_magic_fleeze_cooldown

execute positioned ~ ~0.125 ~ rotated ~ 0 run function animated_java:hiber_latch/summon {args: {animation: 'animation.model.main', start_animation: true}}