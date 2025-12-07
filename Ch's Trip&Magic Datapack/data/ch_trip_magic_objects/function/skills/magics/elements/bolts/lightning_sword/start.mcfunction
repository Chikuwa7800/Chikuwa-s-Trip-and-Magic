execute positioned ~ ~400 ~ run summon item_display ~ ~ ~ {CustomName:'{"text":"ライトニング・ソード"}',Tags:["ls_magic_lightning_sword_model","ls_magic_lightning_sword"],teleport_duration:3,item_display:"head",brightness:{sky:15,block:15},item:{id:"minecraft:command_block",count:1b,components:{"minecraft:custom_name":{"color":"yellow","italic":false,"text":"雷竜の剣"},custom_model_data:{strings:["ch_tm:item/magic/lightning_sword/model"]},block_entity_data:{id:"command_block",auto:1b,Command:"setblock ~ ~ ~ air"}}}}
execute as @s at @s positioned ~ ~4 ~ run tp @e[tag=ls_magic_lightning_sword_model,limit=1,sort=nearest] ~ ~ ~ 0 180
execute as @s at @s positioned ~ ~5 ~ run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 100 force
execute as @s at @s positioned ~ ~5 ~ run particle dust{color:[0.506,0.973,0.988],scale:1} ^ ^ ^1 0.2 0.2 0.2 0.5 10
execute as @s at @s positioned ~ ~4 ~ run playsound item.trident.return player @a ~ ~ ~ 2 0.5
execute as @s at @s positioned ~ ~4 ~ run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 1
execute as @s at @s positioned ~ ~4 ~ run playsound entity.elder_guardian.ambient player @a ~ ~ ~ 1 1
tag @s add ls_magic_lightning_sword_pl
tag @s add ls_tm_magic_lightsword_cooldown
