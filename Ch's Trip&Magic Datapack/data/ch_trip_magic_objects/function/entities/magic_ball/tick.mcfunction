## Magic Ball's All Datas
#skill:lang,
#model:"model",
#movement_speed:amount,
#hit_damage:amount,
#hit_damage_type:damage_type,
#hit_effect:function,
#effect_duration:integer,
#hit_add_action:function,
#death_tick:integer,
#tick_particle:function,
#tick_sound:function,
#hit_particle:function,
#hit_sound:function,
#owner:UUID

function ch_trip_magic_objects:entities/magic_ball/move with entity @s data

$function $(tick_particle)
$function $(tick_sound)

function ch_trip_magic_objects:entities/magic_ball/colision with entity @s data