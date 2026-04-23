execute if entity @s[tag=ch_tm_magic_verbel_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.ice.lv5","cooltime":"47"}
execute if entity @s[tag=ch_tm_magic_verbel_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_verbel_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=53..}] run function ch_trip_and_magic:magic/magic_temp/ices/verbel_glaicis/start
execute if entity @s[scores={ch_tm_magic_mana=53..}] run tag @s add ch_tm_magic_verbel_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..52}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..52}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"32","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=53..}] run scoreboard players remove @s ch_tm_magic_mana 53
