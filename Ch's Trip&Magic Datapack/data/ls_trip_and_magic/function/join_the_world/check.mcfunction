scoreboard players set @s ls_trip_magic_install 0

tellraw @s ["\n---------------\n\n",{"text":"このワールドには [Magic & Trip] が導入されています。\n\nCreated "},{"text":"Chikuwa","color":"yellow"},"\n\n---------------\n"]
playsound block.beacon.power_select master @s ~ ~ ~ 1 1
playsound item.book.page_turn master @s ~ ~ ~ 1 1
playsound item.book.put master @s ~ ~ ~ 1 1
playsound item.armor.equip_iron master @s ~ ~ ~ 1 1

