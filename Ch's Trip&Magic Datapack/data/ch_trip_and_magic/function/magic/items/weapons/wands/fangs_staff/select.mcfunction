#!ch_tm_fangs_attack_cooldown
execute if entity @s[tag=ch_tm_fangs_attack_cooldown] run function ch_trip_and_magic:magic/cooldown {"name":"item_skill.magic.fangs"}
execute if entity @s[tag=ch_tm_fangs_attack_cooldown] run function ch_trip_and_magic:magic/items/weapons/wands/magic_staff/no
execute if entity @s[tag=ch_tm_fangs_attack_cooldown] run return fail
execute if entity @s[predicate=!ch_trip_and_magic:acshident/sneaks] run function ch_trip_and_magic:magic/items/weapons/wands/fangs_staff/attack/check
execute if entity @s[predicate=ch_trip_and_magic:acshident/sneaks] run function ch_trip_and_magic:magic/items/weapons/wands/fangs_staff/defense/check
