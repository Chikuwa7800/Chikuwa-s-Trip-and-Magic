execute if entity @s[tag=ls_tm_magic_lightsword_cooldown] run function ls_trip_and_magic:magic/cooldown {"name":"item_skill.magic.bolt.lv3"}
execute if entity @s[tag=ls_tm_magic_lightsword_cooldown] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ls_tm_magic_lightsword_cooldown] run return fail
execute if entity @s[scores={ls_tm_magic_mana=17..}] run function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/start
execute if entity @s[scores={ls_tm_magic_mana=..16}] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ls_tm_magic_mana=..16}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ls_tm_magic_mana=17..}] run scoreboard players remove @s ls_tm_magic_mana 17