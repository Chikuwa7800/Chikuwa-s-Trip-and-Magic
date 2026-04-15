## 弾丸メイン処理
 # スコア増加
  scoreboard players add @s ch_tm.bullet.tick 1
 # 飛ぶ！
  function ch_trip_and_magic:magic/entities/bullet/move with entity @s data
 # 200tick(10秒)飛んだら弾を削除
  execute if entity @s[scores={ch_tm.bullet.tick=200..}] run function ch_trip_and_magic:magic/entities/bullet/hit_to_ground with entity @s data
