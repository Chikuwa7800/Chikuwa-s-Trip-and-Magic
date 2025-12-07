execute if entity @s[scores={ls_tm_magic_mana=12..}] run function ls_trip_and_magic:magic/magic_temp/others/fangs/defense/main
execute if entity @s[scores={ls_tm_magic_mana=..11}] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ls_tm_magic_mana=..11}] run execute if entity @s[scores={ls_tm_magic_mana=..9}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ls_tm_magic_mana=12..}] run scoreboard players remove @s ls_tm_magic_mana 12
