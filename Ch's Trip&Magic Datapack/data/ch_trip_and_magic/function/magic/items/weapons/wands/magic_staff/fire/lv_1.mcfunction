execute if entity @s[tag=ch_tm_magic_flare_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.fire.lv1","cooltime":"0.5"}
execute if entity @s[tag=ch_tm_magic_flare_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_flare_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=5..}] run function ch_trip_and_magic:magic/magic_temp/fires/blaze_flare/summon with entity @s
execute if entity @s[scores={ch_tm_magic_mana=5..}] run tag @s add ch_tm_magic_flare_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..4}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..4}] run tellraw @s [{"translate":"notice.notenough_mana","color":"dark_red","italic":false},{"text":" ","bold":false,"italic":false,"underlined":false},{"translate":"notice.required","color":"dark_red","bold":false,"italic":false,"underlined":false},{"text":"5","color":"dark_red","bold":false,"italic":false,"underlined":false}]
execute if entity @s[scores={ch_tm_magic_mana=5..}] run scoreboard players remove @s ch_tm_magic_mana 5