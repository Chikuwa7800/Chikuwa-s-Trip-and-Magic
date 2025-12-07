execute unless entity @e[type=armor_stand,tag=ls_trip_magic_install] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ls_trip_magic_install"]}

tellraw @a ["\n---------------\n\n",{"text":"ワールドに [Magic & Trip] がインストールされました。\n\nCreated "},{"text":"Chikuwa","color":"yellow"},"\n\n---------------\n"]

execute as @a at @s run playsound block.beacon.power_select master @s ~ ~ ~ 1 1
execute as @a at @s run playsound item.book.page_turn master @s ~ ~ ~ 1 1
execute as @a at @s run playsound item.book.put master @s ~ ~ ~ 1 1
execute as @a at @s run playsound item.armor.equip_iron master @s ~ ~ ~ 1 1
function #load

scoreboard players set @a ls_tm_magic_mana 100
scoreboard players set @a ls_tm_magic_mana_max 100
scoreboard players set @a ls_tm_magic_mana_add 0
scoreboard players set @a ls_tm_magic_mana_up 1
