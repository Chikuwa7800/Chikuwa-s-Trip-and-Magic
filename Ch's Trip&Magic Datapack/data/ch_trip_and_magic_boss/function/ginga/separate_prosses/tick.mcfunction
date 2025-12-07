##本体と分離した処理

execute as @e[type=item_display,tag=ch_tm_bosses_cutter] at @s run function ch_trip_and_magic_boss:ginga/separate_prosses/cutter/tick
execute as @e[type=item_display,tag=ch_tm_bosses_void_bullet] at @s run function ch_trip_and_magic_boss:ginga/separate_prosses/bullet/tick
execute as @e[type=item_display,tag=ch_tm.boss.ginunga.action.angel_wisper.core] at @s run function ch_trip_and_magic_boss:ginga/animation/angel_wisper/tick
#execute as @e[type=item_display,tag=ch_tm_bosses_nerve] at @s run function ch_trip_and_magic_boss:ginga/separate_prosses/nerve/tick