execute if entity @s[tag=ch_tm_gaia_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.nature.lv5","cooltime":"30"}
execute if entity @s[tag=ch_tm_gaia_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_gaia_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=32..}] anchored eyes positioned ^ ^ ^0.01 run function ch_trip_and_magic:magic/magic_temp/nature/gaia_eidis/start
execute if entity @s[scores={ch_tm_magic_mana=32..}] run tag @s add ch_tm_gaia_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..31}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..31}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"32","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=32..}] run scoreboard players remove @s ch_tm_magic_mana 32