summon area_effect_cloud ~ ~-0.5 ~ {WaitTime:0,Age:4,Duration:10,Radius:0.25,custom_particle:{type:"small_gust"},potion_contents:{custom_effects:[{id:slow_falling,amplifier:0,duration:2,show_icon:false,show_particles:false,ambient:false}]}}
summon area_effect_cloud ~ ~ ~ {WaitTime:0,Age:4,Duration:10,Radius:0.25,custom_particle:{type:"small_gust"},potion_contents:{custom_effects:[{id:slow_falling,amplifier:0,duration:2,show_icon:false,show_particles:false,ambient:false}]}}
particle small_gust ~ ~ ~ 0.1 0.0 0.1 0 2
tag @s remove ch_tm_can_skywalk
tag @s add ch_tm_did_skywalk
tag @s remove ch_tm_was_on_ground