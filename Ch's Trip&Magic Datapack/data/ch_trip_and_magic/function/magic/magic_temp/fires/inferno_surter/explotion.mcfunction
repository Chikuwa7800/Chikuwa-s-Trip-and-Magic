function ch_effect_temp:vfx/blast/play
function ch_effect_temp:vfx/blast_outline/play
playsound trip_magic:magic.fire.inferno_surter.explode player @a ~ ~ ~ 4 1
execute as @e[distance=..12] run function ch_trip_and_magic:magic/magic_temp/fires/inferno_surter/damage with entity @s data
kill @s