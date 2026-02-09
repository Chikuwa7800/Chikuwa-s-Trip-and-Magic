tag @s remove ch_tm_spell_charged_lv3
tag @s remove ch_tm_spell_charged_lv4
tag @s remove ch_tm_spell_charged_lv5
tag @s remove ch_tm_spell_charging
scoreboard players reset @s ch_tm_spell_charge
playsound entity.zombie.infect player @a ~ ~ ~ 1 2
execute anchored eyes run particle ash ^ ^ ^0.1 0.2 0.2 0.2 0.1 20 force