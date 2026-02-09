# コマンドの中心となるディスプレイ召喚
summon item_display ~ ~0.46 ~ {NoGravity:1b,Silent:1b,Tags:["ls_cutboard_core","ls_cutboard"],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:903}},Rotation:[0.0f,0.0f]}
#イントラクションsummon
summon interaction ~ ~ ~ {width:1f,height:0.05f,response:1b,Tags:["ls_cutboard","ls_cutboard_interact"]}
# 演出
playsound block.wood.place block @a ~ ~ ~ 1 1
#進捗
#advancement grant @p only ch_trip_and_magic:
# 検知用の額縁を消去
kill @s
