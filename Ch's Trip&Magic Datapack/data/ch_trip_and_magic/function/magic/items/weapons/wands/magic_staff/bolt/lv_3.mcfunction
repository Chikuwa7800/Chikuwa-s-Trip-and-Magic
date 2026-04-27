execute if entity @s[tag=ch_tm_magic_dash_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.bolt.lv3","cooltime":"15"}
execute if entity @s[tag=ch_tm_magic_dash_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_dash_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=20..}] run function ch_trip_and_magic:magic/magic_temp/bolts/lightning_dash/start
execute if entity @s[scores={ch_tm_magic_mana=20..}] run tag @s add ch_tm_magic_dash_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..19}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..19}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"20","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=20..}] run scoreboard players remove @s ch_tm_magic_mana 20