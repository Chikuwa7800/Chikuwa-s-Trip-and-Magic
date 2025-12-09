#function ch_debug:spawn/start {mob:mob_name,pos_x:posx,pos_y:posy,pos_z:posz}
$summon $(mob) $(pos_x) $(pos_y) $(pos_z) {IsBaby:0b}
$playsound minecraft:entity.illusioner.mirror_move master @a $(pos_x) $(pos_y) $(pos_z) 10 1
$execute positioned $(pos_x) $(pos_y) $(pos_z) run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0 75