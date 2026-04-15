## 弾丸移動
 # 次の移動先が読み込み範囲外なら消去
  $execute unless loaded ^ ^ ^$(speed) run function ch_trip_and_magic:magic/entities/bullet/hit_to_ground
 # 移動中の処理
  function ch_trip_and_magic:magic/entities/bullet/do_on_moving with entity @s data
 # カスタム
  $function $(tick)
 # 等速直線運動とかよくないからね、gravity値を超えると簡易的な重力影響を受ける
  $execute if score @s ch_tm.bullet.tick matches $(gravity).. run tp @s ~ ~ ~ ~ ~0.5
 # 移動速度分移動
  $tp @s ^ ^ ^$(speed)
