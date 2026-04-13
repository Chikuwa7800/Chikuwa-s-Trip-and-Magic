execute if entity @s[tag=ch_tm_magic_asgars_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.bolt.lv5","cooltime":"52"}
execute if entity @s[tag=ch_tm_magic_asgars_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_asgars_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=61..}] run function ch_trip_and_magic:magic/magic_temp/bolts/asgars_crash/start
execute if entity @s[scores={ch_tm_magic_mana=61..}] run tag @s add ch_tm_magic_asgars_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..60}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..60}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"61","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=61..}] run scoreboard players remove @s ch_tm_magic_mana 61