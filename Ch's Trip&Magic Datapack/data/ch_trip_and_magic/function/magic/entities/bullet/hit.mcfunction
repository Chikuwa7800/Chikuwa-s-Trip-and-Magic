## ヒット
 # 演出
  $function $(hit_ground_effect)
  $function $(hit_effect)
 # 当たったエンティティにダメージを与える
  execute if entity @s[type=!#ch_trip_and_magic:cannot_hurt_entities] run function ch_trip_and_magic:magic/entities/bullet/damage with entity @n[tag=ch_tm.magic_bullet] data
  execute if entity @s[type=#ch_trip_and_magic:defeat] run kill @n[tag=ch_tm.magic_bullet]
  execute if entity @s[type=#ch_trip_and_magic:kills] run function ch_trip_and_magic:magic/entities/bullet/kill
  execute if entity @s[type=#ch_trip_and_magic:mirror] run function ch_trip_and_magic:magic/entities/bullet/no_motion
 # 弾丸削除
  kill @n[tag=ch_tm.magic_bullet]