tag @s add ch_tm_thanatholos_marker
execute store result score @s ch_tm_magic_than_damage run attribute @n[tag=ch_tm_thantholos_pl] attack_damage get 100
scoreboard players operation @s ch_tm_magic_than_damage += $ch.tm.than_damage ch_tm_magic_than_damage
execute store result entity @s data."damage" double 0.01 run scoreboard players get @s ch_tm_magic_than_damage