execute if entity @s[tag=ch_tm_magic_frost_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.ice.lv1"}
execute if entity @s[tag=ch_tm_magic_frost_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_frost_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=5..}] run function ch_trip_and_magic:magic/magic_temp/ices/frost_bullet/summon with entity @s
execute if entity @s[scores={ch_tm_magic_mana=5..}] run tag @s add ch_tm_magic_frost_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..4}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..4}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ch_tm_magic_mana=5..}] run scoreboard players remove @s ch_tm_magic_mana 5