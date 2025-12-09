#function ch_debug:spawn/start {mob:mob_name,pos:position}
$summon $(mob) $(pos) {IsBaby:0b}
$playsound minecraft:entity.illusioner.mirror_move master @a $(pos) 10 1
$execute positioned $(pos) run particle minecraft:witch ~ ~1 ~ 0.25 0.5 0.25 0 75