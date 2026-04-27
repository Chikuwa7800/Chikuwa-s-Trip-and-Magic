execute if entity @s[tag=ch_tm_magic_bolea_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.ice.lv3","cooltime":"15"}
execute if entity @s[tag=ch_tm_magic_bolea_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_bolea_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=25..}] run function ch_trip_and_magic:magic/magic_temp/ices/bolea_breath/start
execute if entity @s[scores={ch_tm_magic_mana=25..}] run tag @s add ch_tm_magic_bolea_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..24}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..24}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"25","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=25..}] run scoreboard players remove @s ch_tm_magic_mana 25
