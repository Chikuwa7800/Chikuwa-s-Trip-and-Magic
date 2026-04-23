$execute at @e[limit=1,scores={ch_tm_entity_id=$(owner)}] run tp @s ~ ~ ~ 0 0
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 2..16 run particle end_rod ~ ~ ~ 1.5 1.5 1.5 0 2
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 2 run item modify entity @s contents ch_trip_and_magic:magic/llyr/1
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 3 run item modify entity @s contents ch_trip_and_magic:magic/llyr/2
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 4 run item modify entity @s contents ch_trip_and_magic:magic/llyr/3
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 5 run item modify entity @s contents ch_trip_and_magic:magic/llyr/4
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 6 run item modify entity @s contents ch_trip_and_magic:magic/llyr/5
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 7 run item modify entity @s contents ch_trip_and_magic:magic/llyr/6
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 8 run item modify entity @s contents ch_trip_and_magic:magic/llyr/7
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 9 run item modify entity @s contents ch_trip_and_magic:magic/llyr/8
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 10 run item modify entity @s contents ch_trip_and_magic:magic/llyr/9
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 11 run item modify entity @s contents ch_trip_and_magic:magic/llyr/10
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 12 run item modify entity @s contents ch_trip_and_magic:magic/llyr/11
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 13 run item modify entity @s contents ch_trip_and_magic:magic/llyr/12
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 14 run item modify entity @s contents ch_trip_and_magic:magic/llyr/13
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 15 run item modify entity @s contents ch_trip_and_magic:magic/llyr/14
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 16 run item modify entity @s contents ch_trip_and_magic:magic/llyr/15
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 17 run item replace entity @s contents with air[item_model=air]
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 17 run playsound trip_magic:magic.water.llyr_deluge.blast player @a ~ ~ ~ 2 1
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 17..21 run function ch_trip_and_magic:magic/magic_temp/waters/llyr_deluge/blast
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 17 as @e[distance=..5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 8 ch_trip_and_magic:magic/waters_lv4 by @e[limit=1,scores={ch_tm_entity_id=$(owner)}]
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 18 as @e[distance=..5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 1 ch_trip_and_magic:magic/waters_lv4 by @e[limit=1,scores={ch_tm_entity_id=$(owner)}]
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 19 as @e[distance=..5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 1 ch_trip_and_magic:magic/waters_lv4 by @e[limit=1,scores={ch_tm_entity_id=$(owner)}]
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 20 as @e[distance=..5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 1 ch_trip_and_magic:magic/waters_lv4 by @e[limit=1,scores={ch_tm_entity_id=$(owner)}]
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 21 as @e[distance=..5] unless score @s ch_tm_entity_id matches $(owner) run damage @s 1 ch_trip_and_magic:magic/waters_lv4 by @e[limit=1,scores={ch_tm_entity_id=$(owner)}]
$execute if score @e[limit=1,scores={ch_tm_entity_id=$(owner)}] ch_tm_magic_llyr_tick matches 21.. run kill @s