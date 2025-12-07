##呼出初め処理
 #進捗剝奪
  advancement revoke @s only ch_trip_and_magic_boss:interaction_rise

 #右クリックしたプレイヤーが墓場の心を持っているかつ呼出台が呼出受付状態の場合に呼出開始
  execute unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{"datapack_type": "ls_trip_magic","item_type": "equipment","equipment_type": "grave_heart"}}}}] run return fail
  execute if entity @e[tag=ls_tm_bosses_ginunga_summon,tag=ls_tm_bosses_ginunga_cannot_summon] run return fail
  execute as @n[type=interaction,tag=ls_tm_bosses_ginunga_summon,tag=!ls_tm_bosses_ginunga_summon_after_summon,tag=!ls_tm_bosses_ginunga_cannot_summon] run function ch_trip_and_magic_boss:ginga/first/summon_start
  function ch_trip_and_magic_boss:ginga/first/player
