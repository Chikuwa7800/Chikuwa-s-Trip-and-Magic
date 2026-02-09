execute if entity @s[tag=ch_tm_magic_aqua_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.water.lv1"}
execute if entity @s[tag=ch_tm_magic_aqua_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_aqua_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=3..}] run function ch_trip_and_magic:magic/magic_temp/waters/aqua_shot/summon with entity @s
execute if entity @s[scores={ch_tm_magic_mana=3..}] run tag @s add ch_tm_magic_aqua_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..2}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..2}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ch_tm_magic_mana=3..}] run scoreboard players remove @s ch_tm_magic_mana 3