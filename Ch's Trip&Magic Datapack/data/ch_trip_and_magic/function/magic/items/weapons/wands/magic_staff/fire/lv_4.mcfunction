execute if entity @s[tag=ch_tm_magic_adure_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.fire.lv4","cooltime":"40"}
execute if entity @s[tag=ch_tm_magic_adure_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_adure_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=38..}] anchored eyes positioned ^ ^ ^0.1 run function ch_trip_and_magic:magic/magic_temp/fires/adure_burn/start
execute if entity @s[scores={ch_tm_magic_mana=38..}] run tag @s add ch_tm_magic_adure_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..37}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..37}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"38","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=38..}] run scoreboard players remove @s ch_tm_magic_mana 38
