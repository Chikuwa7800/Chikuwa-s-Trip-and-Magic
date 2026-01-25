execute store result score @s ch_tm_entity_id run scoreboard players get @n[tag=ls_magic_lightning_sword_pl] ch_tm_entity_id

function ls_trip_and_magic:magic/magic_temp/bolts/lightning_sword/rotate
data merge entity @s {Tags:["ch_tm_magic_lightning_sword"],teleport_duration:3,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:command_block",count:1b,components:{item_model:"trip_magic:magic/lightning_sword"}}}

particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
particle dust{color:[0.506,0.973,0.988],scale:1} ^ ^ ^1 0.2 0.2 0.2 0.5 10
playsound item.trident.return player @a ~ ~ ~ 2 0.5
playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1
playsound entity.elder_guardian.ambient player @a ~ ~ ~ 1 1