execute if entity @s[tag=ch.effect.start] run function ch_effect_temp:vfx/spike/tick_start with entity @s data
execute if entity @s[tag=ch.effect.tick] run function ch_effect_temp:vfx/spike/tick with entity @s data
execute if entity @s[tag=ch.effect.end] run function ch_effect_temp:vfx/spike/tick_end with entity @s data