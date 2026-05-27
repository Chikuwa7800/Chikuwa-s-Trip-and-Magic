execute unless score @s ch_tm_magic_mana_add matches 20.. if score @s ch_tm_magic_mana < @s ch_tm_magic_mana_max run scoreboard players add @s ch_tm_magic_mana_add 1
execute if score @s ch_tm_magic_mana_add matches 20.. if score @s ch_tm_magic_mana < @s ch_tm_magic_mana_max run scoreboard players operation @s ch_tm_magic_mana += @s ch_tm_magic_mana_up
execute if score @s ch_tm_magic_mana_add matches 20.. if score @s ch_tm_magic_mana < @s ch_tm_magic_mana_max run particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 0.1 5 normal @s
execute if score @s ch_tm_magic_mana_add matches 20.. run scoreboard players set @s ch_tm_magic_mana_add 0
execute if score @s ch_tm_magic_mana > @s ch_tm_magic_mana_max run scoreboard players operation @s ch_tm_magic_mana = @s ch_tm_magic_mana_max
execute if score @s ch_tm_magic_mana matches ..-1 run scoreboard players set @s ch_tm_magic_mana 0