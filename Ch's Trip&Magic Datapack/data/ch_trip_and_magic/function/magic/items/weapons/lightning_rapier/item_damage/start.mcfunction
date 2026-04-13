## アイテム耐久値加算
## マクロ: {"amount": int}
 # 演算処理
  # 現耐久値を取得
   execute store result score @s ch_tm_magic_lightning_rapier run data get entity @s SelectedItem.components."minecraft:damage"
  # 追加したいダメージ取得
   $scoreboard players set @s ch_tm_magic_lightning_rapier_add $(amount)
  # 演算
   scoreboard players operation @s ch_tm_magic_lightning_rapier += @s ch_tm_magic_lightning_rapier_add
  # 演算結果が101以上なら100にする
   execute if score @s ch_tm_magic_lightning_rapier matches 101.. run scoreboard players set @s ch_tm_magic_lightning_rapier 100

 # アイテムに代入
  # 代替エンティティ召喚
   summon item_display ~ ~ ~ {Tags:["ch_tm_magic_lightning_rapier_itemdamage_add"],transformation:{scale:[0,0,0],left_rotation:[0,0,0,0],right_rotation:[0,0,0,0],translation:[0,0,0]}}
  # 代替エンティティにアイテムをコピー
   item replace entity @n[type=item_display,tag=ch_tm_magic_lightning_rapier_itemdamage_add] contents from entity @s weapon.mainhand
  # 代替エンティティにダメージ代入
   execute store result entity @n[type=item_display,tag=ch_tm_magic_lightning_rapier_itemdamage_add] item.components."minecraft:damage" int 1 run scoreboard players get @s ch_tm_magic_lightning_rapier
  # 実行者にアイテムを移す
   item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=ch_tm_magic_lightning_rapier_itemdamage_add] contents

 # 後始末
  # 代替エンティティキル
   kill @n[type=item_display,tag=ch_tm_magic_lightning_rapier_itemdamage_add]
  # 誤爆が怖いので一応スコアリセット
   scoreboard players reset @s ch_tm_magic_lightning_rapier
   scoreboard players reset @s ch_tm_magic_lightning_rapier_add