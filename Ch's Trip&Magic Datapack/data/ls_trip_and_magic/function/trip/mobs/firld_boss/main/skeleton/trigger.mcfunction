$execute if entity @n[type=arrow,nbt={Owner:$(UUID)}] run tag @s add ls_tm_trip_mobs_magic_skeleton_prep_cast
$kill @n[type=arrow,nbt={Owner:$(UUID)}]
#$say $(UUID) @a