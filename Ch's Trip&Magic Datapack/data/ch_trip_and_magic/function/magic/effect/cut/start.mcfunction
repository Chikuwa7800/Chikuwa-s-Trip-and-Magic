##cut
#> function ch_trip_and_magic:magic/effect/cut/start {"time":""}
 # もしすでに同じ効果がある場合失敗処理
  $execute if score @s ch_tm_magic_cut_tick matches $(time).. run return fail
 # スコアボードに効果時間代入
  $scoreboard players set @s ch_tm_magic_cut_tick $(time)
  scoreboard players set @s ch_tm_magic_cut_tick_dummy 0
 # もしエンティティがレベル5の魔法耐性を持っている場合時間を切り捨て半減
  execute if predicate ch_trip_and_magic:magic/effect/magic_protection run scoreboard players operation @s ch_tm_magic_cut_tick_dummy /= #ch_trip_amount ch_tm_2
 # tag付け
  tag @s add ch_tm_magic_cut_tick
