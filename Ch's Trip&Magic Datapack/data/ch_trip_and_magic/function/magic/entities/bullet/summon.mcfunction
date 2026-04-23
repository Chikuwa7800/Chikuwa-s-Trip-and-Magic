## 召喚  function ch_trip_and_magic:magic/entities/bullet/summon {"speed": int,"damage": int,"damage_type": "damage_type","gravity": int,"hit_ground": "function","hit": "function","tick": "function","addition_effect":"function","model":"file"}
 # タグ付け
  tag @s add ch_tm.shot
 # 弾召喚 with コマンドマクロ
  $execute summon item_display run function ch_trip_and_magic:magic/entities/bullet/init {"speed":$(speed),"damage":$(damage),"damage_type":"$(damage_type)","gravity":$(gravity),"rerun":$(rerun),"hit_ground_effect":"$(hit_ground)","hit_effect":"$(hit)","tick":"$(tick)","addition_effect":"$(addition_effect)","model":"$(model)"}
 # タグ消し
  tag @s remove ch_tm.shot
  
  #say good in summon