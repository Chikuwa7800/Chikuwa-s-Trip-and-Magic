# 進捗解除

# 場合分け
 # グレイブかつ通常
  #execute if predicate ch_tm_craive:glaive_notready

 # グレイブかつ装填
  #execute if predicate ch_tm_craive:glaive_ready

 # クロスボウかつ通常
  execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate ch_trip_and_magic:trip/claive/cross_notready if predicate ch_trip_and_magic:trip/claive/inventory_arrow run function ch_trip_and_magic:trip/items/claive/charge
  execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate ch_trip_and_magic:trip/claive/cross_notready if predicate ch_trip_and_magic:trip/claive/hotbar_arrow run function ch_trip_and_magic:trip/items/claive/charge
  execute if entity @s[gamemode=!creative,gamemode=!spectator] if predicate ch_trip_and_magic:trip/claive/cross_notready if predicate ch_trip_and_magic:trip/claive/offhand_arrow run function ch_trip_and_magic:trip/items/claive/charge
  execute unless entity @s[gamemode=!creative,gamemode=!spectator] if predicate ch_trip_and_magic:trip/claive/cross_notready run function ch_trip_and_magic:trip/items/claive/charge