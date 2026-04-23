execute if entity @s[tag=ch_tm_magic_llyr_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.water.lv4","cooltime":"24"}
execute if entity @s[tag=ch_tm_magic_llyr_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_llyr_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=34..}] run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/start
execute if entity @s[scores={ch_tm_magic_mana=34..}] run tag @s add ch_tm_magic_llyr_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..33}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..33}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"34","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=34..}] run scoreboard players remove @s ch_tm_magic_mana 20
