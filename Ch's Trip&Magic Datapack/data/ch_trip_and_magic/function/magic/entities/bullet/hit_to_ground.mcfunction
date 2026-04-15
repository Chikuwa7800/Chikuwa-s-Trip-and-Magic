## 弾が地面に当たったり
 # 演出
  $execute as @n[tag=ch_tm.magic_bullet] run function $(hit_ground_effect)
 # 弾丸は消える
  kill @s