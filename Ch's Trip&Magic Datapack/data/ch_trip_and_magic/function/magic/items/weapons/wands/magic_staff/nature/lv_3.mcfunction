execute if entity @s[tag=ch_tm_magic_gust_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.nature.lv3","cooltime":"20"}
execute if entity @s[tag=ch_tm_magic_gust_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_gust_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=21..}] run function ch_trip_and_magic:magic/magic_temp/nature/gust_burst/start
execute if entity @s[scores={ch_tm_magic_mana=21..}] run tag @s add ch_tm_magic_gust_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..20}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..20}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"21","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=21..}] run scoreboard players remove @s ch_tm_magic_mana 21