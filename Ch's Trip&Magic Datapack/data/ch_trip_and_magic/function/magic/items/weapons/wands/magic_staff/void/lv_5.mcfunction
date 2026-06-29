execute if entity @s[tag=ch_tm_erebos_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.void.lv5","cooltime":"70"}
execute if entity @s[tag=ch_tm_erebos_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_erebos_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=72..}] run function ch_trip_and_magic:magic/magic_temp/void/erebos_nova/start
execute if entity @s[scores={ch_tm_magic_mana=72..}] run tag @s add ch_tm_erebos_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..71}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..71}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"72","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=72..}] run scoreboard players remove @s ch_tm_magic_mana 25