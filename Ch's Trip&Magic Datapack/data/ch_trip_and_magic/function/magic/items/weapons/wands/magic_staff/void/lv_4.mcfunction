execute if entity @s[tag=ch_tm_strike_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.void.lv4","cooltime":"42"}
execute if entity @s[tag=ch_tm_strike_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_strike_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=31..}] run function ch_trip_and_magic:magic/magic_temp/void/void_strike/start
execute if entity @s[scores={ch_tm_magic_mana=31..}] run tag @s add ch_tm_strike_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..30}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..30}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"31","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=31..}] run scoreboard players remove @s ch_tm_magic_mana 25