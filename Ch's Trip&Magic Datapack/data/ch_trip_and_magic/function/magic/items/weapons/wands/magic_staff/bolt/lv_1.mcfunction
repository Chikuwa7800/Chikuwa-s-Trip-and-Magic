execute if entity @s[tag=ch_tm_magic_volt_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.bolt.lv1","cooltime":"0.5"}
execute if entity @s[tag=ch_tm_magic_volt_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_volt_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=8..}] run function ch_trip_and_magic:magic/magic_temp/bolts/volt_strike/summon with entity @s
execute if entity @s[scores={ch_tm_magic_mana=8..}] run tag @s add ch_tm_magic_volt_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..7}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..7}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"8","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=8..}] run scoreboard players remove @s ch_tm_magic_mana 8
