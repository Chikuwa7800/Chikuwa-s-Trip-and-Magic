## 状態決め
 # 識別タグ付け
  tag @s add ch_tm.magic_bullet
 # 識別番号をスコアとエンティティデータ両方に振り分け
  # エンティティデータに振り分け
   execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ch_tm.shot] ch_tm_entity_id
  # スコアに振り分け
   execute store result entity @s data."owner" int 1 run scoreboard players get @n[tag=ch_tm.shot] ch_tm_entity_id
 # エンティティデータにattribute的なのを代入
  $data merge entity @s {Item:{id:acacia_button,components:{item_model:"$(model)"}},teleport_duration:1,shadow_radius:0.1,shadow_strength:1,data:{"speed":"$(speed)","damage":"$(damage)","damage_type":"$(damage_type)","gravity":"$(gravity)","rerun":"$(rerun)","hit_ground_effect":"$(hit_ground_effect)","hit_effect":"$(hit_effect)","tick":"$(tick)","addition_effect":"$(addition_effect)"}}
 # 弾丸の向きをオーナーと一致させる
  rotate @s ~ ~

#say good in init