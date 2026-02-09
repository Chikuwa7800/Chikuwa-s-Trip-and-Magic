execute if entity @s[tag=ch_tm_magic_blast_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.fire.lv3"}
execute if entity @s[tag=ch_tm_magic_blast_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_magic_blast_cooldown] run return fail
execute if entity @s[scores={ch_tm_magic_mana=20..}] anchored eyes positioned ^ ^ ^0.1 run function ch_trip_and_magic:magic/magic_temp/fires/flame_blast/summon
execute if entity @s[scores={ch_tm_magic_mana=20..}] run tag @s add ch_tm_magic_blast_cooldown
execute if entity @s[scores={ch_tm_magic_mana=..19}] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[scores={ch_tm_magic_mana=..19}] run tellraw @s {"translate":"notice.notenough_mana","color":"dark_red","bold":true,"italic":false,"underlined":true}
execute if entity @s[scores={ch_tm_magic_mana=20..}] run scoreboard players remove @s ch_tm_magic_mana 20
