execute if entity @s[tag=ls_tm_magic_gust_cooldown] run function ls_trip_and_magic:magic/cooldown {"name":"item_skill.magic.nature.lv3"}
execute if entity @s[tag=ls_tm_magic_gust_cooldown] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ls_tm_magic_gust_cooldown] run return fail
execute if entity @s[scores={ls_tm_magic_mana=15..}] run function ls_trip_and_magic:magic/magic_temp/nature/gust_burst/start
execute if entity @s[scores={ls_tm_magic_mana=..14}] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ls_tm_magic_mana=..14}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ls_tm_magic_mana=15..}] run scoreboard players remove @s ls_tm_magic_mana 15