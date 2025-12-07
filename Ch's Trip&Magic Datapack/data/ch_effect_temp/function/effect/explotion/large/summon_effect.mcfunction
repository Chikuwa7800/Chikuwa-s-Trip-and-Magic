 function animated_java:explode_large_effect/summon {args: {animation: 'animation.model.explode', start_animation: true}}

# えぐれたブロック
 execute rotated ~ ~ run function ch_effect_temp:effect/explotion/large/magma
 execute rotated ~45 ~ run function ch_effect_temp:effect/explotion/large/blackstone
 execute rotated ~81 ~ run function ch_effect_temp:effect/explotion/large/smooth_basalt

