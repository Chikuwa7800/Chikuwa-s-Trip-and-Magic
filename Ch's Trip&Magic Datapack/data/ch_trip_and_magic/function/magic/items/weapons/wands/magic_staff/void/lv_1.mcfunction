execute if entity @s[tag=ch_tm_magic_abyss_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.void.lv1"}
execute if entity @s[tag=ch_tm_magic_abyss_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_abyss_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=10..}] run function ch_trip_and_magic:magic/magic_temp/void/abyss_whisper/summon with entity @s
execute if entity @s[scores={ch_tm_magic_mana=10..}] run tag @s add ch_tm_magic_abyss_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..9}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..9}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ch_tm_magic_mana=10..}] run scoreboard players remove @s ch_tm_magic_mana 10