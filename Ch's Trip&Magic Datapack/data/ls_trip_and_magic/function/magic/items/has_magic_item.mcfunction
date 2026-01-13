execute if entity @s[predicate=ls_trip_and_magic:magic/wakame] run function ls_trip_and_magic:magic/items/weapons/others/troll/wakame_sword/tick
execute if predicate ls_trip_and_magic:score/used_stick run function ls_trip_and_magic:magic/items/weapons/wands/check
execute if predicate ls_trip_and_magic:magic/spell_book/_has if predicate ls_trip_and_magic:acshident/sneaks run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/main
execute if entity @s[tag=ch_tm_spell_charged_lv3] if predicate ls_trip_and_magic:magic/spell_book/_has unless predicate ls_trip_and_magic:acshident/sneaks run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag
execute if entity @s[tag=ch_tm_spell_charged_lv4] if predicate ls_trip_and_magic:magic/spell_book/_has unless predicate ls_trip_and_magic:acshident/sneaks run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag
execute if entity @s[tag=ch_tm_spell_charged_lv5] if predicate ls_trip_and_magic:magic/spell_book/_has unless predicate ls_trip_and_magic:acshident/sneaks run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charge/remove_tag
execute if entity @s[tag=ch_tm_spell_charged_lv3] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charged_effect/lv_3/_all
execute if entity @s[tag=ch_tm_spell_charged_lv4] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charged_effect/lv_4/_all
execute if entity @s[tag=ch_tm_spell_charged_lv5] run function ls_trip_and_magic:magic/items/weapons/wands/magic_staff/_charged_effect/lv_5/_all
function ls_trip_and_magic:magic/display/main