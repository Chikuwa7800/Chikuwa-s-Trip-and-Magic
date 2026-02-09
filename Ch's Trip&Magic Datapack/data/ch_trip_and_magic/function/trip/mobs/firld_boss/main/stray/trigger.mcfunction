$execute if entity @n[type=arrow,nbt={Owner:$(UUID)}] run tag @s add ch_tm_trip_mobs_magic_stray_prep_cast
$kill @n[type=arrow,nbt={Owner:$(UUID)}]
#$say $(UUID) @a