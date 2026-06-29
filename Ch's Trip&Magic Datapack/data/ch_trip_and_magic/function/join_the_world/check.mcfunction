scoreboard players set @s ch_trip_magic_install 0

tellraw @s ["\n---------------\n\n",{"translate":"notice.installed_070",fallback:"§4The resource pack has not been installed!"},{text:"\n"},{"translate":"notice.created_070","color":"yellow",fallback:"Please install [Ch's Trip&Magic Resourse Pack α0.7.0]!"},"\n\n---------------\n"]
playsound block.beacon.power_select master @s ~ ~ ~ 1 1
playsound item.book.page_turn master @s ~ ~ ~ 1 1
playsound item.book.put master @s ~ ~ ~ 1 1
playsound item.armor.equip_iron master @s ~ ~ ~ 1 1

