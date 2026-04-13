execute if entity @s[tag=ch_tm_magic_abyss_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.void.lv1","cooltime":"0.5"}
execute if entity @s[tag=ch_tm_magic_abyss_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_abyss_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=7..}] run function ch_trip_and_magic:magic/magic_temp/void/abyss_whisper/summon with entity @s
execute if entity @s[scores={ch_tm_magic_mana=7..}] run tag @s add ch_tm_magic_abyss_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..6}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..6}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"7","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=7..}] run scoreboard players remove @s ch_tm_magic_mana 7