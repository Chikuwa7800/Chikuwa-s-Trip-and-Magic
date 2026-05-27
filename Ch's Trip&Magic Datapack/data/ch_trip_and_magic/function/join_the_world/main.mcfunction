execute unless entity @e[type=marker,tag=ls_trip_magic_install] run summon marker ~ ~ ~ {Tags:["ls_trip_magic_install"]}

tellraw @s ["\n---------------\n\n",{"translate":"notice.installed.success_070",fallback:"§4The resource pack has not been installed!"},{text:"\n"},{"translate":"notice.created_070","color":"yellow",fallback:"Please install [Ch's Trip&Magic Resourse Pack α0.7.0]!"},"\n\n---------------\n"]

playsound block.beacon.activate master @s ~ ~ ~ 1 1
playsound item.book.page_turn master @s ~ ~ ~ 1 1
playsound item.book.put master @s ~ ~ ~ 1 1
playsound item.armor.equip_leather master @s ~ ~ ~ 1 1

execute unless score @s ch_tm_magic_mana matches 0..2147483647 run scoreboard players set @s ch_tm_magic_mana 100
execute unless score @s ch_tm_magic_mana_max matches 100..2147483647 run scoreboard players set @s ch_tm_magic_mana_max 100
execute unless score @s ch_tm_magic_mana_add matches -2147483648..2147483647 run scoreboard players set @s ch_tm_magic_mana_add 0
execute unless score @s ch_tm_magic_mana_up matches 0..2147483647 run scoreboard players set @s ch_tm_magic_mana_up 1
execute unless score @s ch_tm_magic_xp_level_dummy matches 0..2147483647 run scoreboard players set @s ch_tm_magic_xp_level_dummy 0
tag @a add ch_tm_craive_canuse

function ch_trip_and_magic:set_entity_id
summon marker ~ ~ ~ {Tags:["ch_tm_entity_id"]}
execute store result entity @n[tag=ch_tm_entity_id] data."entity_id" int 1 run scoreboard players get @s ch_tm_entity_id
function ch_trip_and_magic:join_the_world/subtitute with entity @n[tag=ch_tm_entity_id] data