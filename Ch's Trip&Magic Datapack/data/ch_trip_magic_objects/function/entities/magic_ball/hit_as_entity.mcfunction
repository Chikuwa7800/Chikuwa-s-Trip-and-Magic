tag @s add ch_tm.magicball.hitentity

## magic ball ["ch_tm.magicball.hit"]

# damgage
 $damage @s $(hit_damage) $(hit_damage_type) by @n[type=item_display,tag=ch_tm.magicball.hit] from $(owner)

# effect
 $execute if entity @s[tag=!ls_tm_using_shield] run function $(hit_effect)/start {"time":"$(effect_duration)"}

# add action
 $function $(hit_add_action_to_entity)

# sound
 $function $(hit_sound_to_entity)

# particle
 $function $(hit_particle_to_entity)