playsound entity.player.levelup player @s ~ ~ ~ 1 1.5
particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0. 10 normal @s
$tellraw @s [{translate:"$(name)","color":"green","bold":true,"italic":false,"underlined":true},{"translate": "notice.cooldown.end","color": "green","bold": true}]