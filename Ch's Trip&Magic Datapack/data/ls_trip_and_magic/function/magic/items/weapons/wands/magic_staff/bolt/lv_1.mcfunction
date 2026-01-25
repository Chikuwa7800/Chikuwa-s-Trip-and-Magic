execute if entity @s[tag=ls_tm_magic_volt_cooldown] run function ls_trip_and_magic:magic/cooldown {"name":"item_skill.magic.bolt.lv1"}
execute if entity @s[tag=ls_tm_magic_volt_cooldown] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ls_tm_magic_volt_cooldown] run return fail
execute if entity @s[scores={ls_tm_magic_mana=8..}] run function ls_trip_and_magic:magic/magic_temp/bolts/volt_strike/summon with entity @s
execute if entity @s[scores={ls_tm_magic_mana=8..}] run tag @s add ls_tm_magic_volt_cooldown
execute if entity @s[scores={ls_tm_magic_mana=..7}] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ls_tm_magic_mana=..7}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ls_tm_magic_mana=8..}] run scoreboard players remove @s ls_tm_magic_mana 8