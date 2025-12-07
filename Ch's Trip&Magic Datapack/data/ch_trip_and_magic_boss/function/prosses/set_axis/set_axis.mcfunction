##ホーミング

 #角度を取得
  execute store result score @s ch_tm_bosses_axis_x run data get entity @s Rotation[0] 1000
  execute store result score @s ch_tm_bosses_axis_y run data get entity @s Rotation[1] 1000

 #回転角度設定
  scoreboard players set @s ch_tm_bosses_axis_angle 1000

 #回転角度加算
  execute rotated as @s positioned as @n[tag=ch_tm.player.target.ginunga,distance=..48] positioned ^-50 ^ ^ positioned as @s[distance=..50] run scoreboard players operation @s ch_tm_bosses_axis_x -= @s ch_tm_bosses_axis_angle
  execute rotated as @s positioned as @n[tag=ch_tm.player.target.ginunga,distance=..48] positioned ^50 ^ ^ positioned as @s[distance=..50] run scoreboard players operation @s ch_tm_bosses_axis_x += @s ch_tm_bosses_axis_angle
  execute rotated as @s positioned as @n[tag=ch_tm.player.target.ginunga,distance=..48] positioned ^ ^-50 ^ positioned as @s[distance=..50] run scoreboard players operation @s ch_tm_bosses_axis_y -= @s ch_tm_bosses_axis_angle
  execute rotated as @s positioned as @n[tag=ch_tm.player.target.ginunga,distance=..48] positioned ^ ^50 ^ positioned as @s[distance=..50] run scoreboard players operation @s ch_tm_bosses_axis_y += @s ch_tm_bosses_axis_angle

 #回転角度代入
  execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @s ch_tm_bosses_axis_x
  execute store result entity @s Rotation[1] float 0.001 run scoreboard players get @s ch_tm_bosses_axis_y

#execute if entity @s[y_rotation=90..46] run tp @s ~ ~ ~ ~ 45
#execute if entity @s[y_rotation=-44..-90] run tp @s ~ ~ ~ ~ -45
