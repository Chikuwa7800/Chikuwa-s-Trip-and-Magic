execute if entity @s[tag=ch_tm_than_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.void.lv2","cooltime":"5"}
execute if entity @s[tag=ch_tm_than_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_than_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=15..}] run function ch_trip_and_magic:magic/magic_temp/void/thanatholos/start
execute if entity @s[scores={ch_tm_magic_mana=15..}] run tag @s add ch_tm_than_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..14}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..14}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"15","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=15..}] run scoreboard players remove @s ch_tm_magic_mana 15